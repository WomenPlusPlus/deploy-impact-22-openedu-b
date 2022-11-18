package service

import (
	"fmt"
	"os"
	"regexp"
	"strings"

	"github.com/DavidBelicza/TextRank/v2"
	"github.com/JesusIslam/tldr"
	"github.com/k3a/html2text"
	sent "github.com/neurosnap/sentences"
)

func cleanString(in string) string {
	out := html2text.HTML2Text(in)
	out = strings.ReplaceAll(out, "\u00a0", "")
	out = strings.ReplaceAll(out, "\n", ". ")
	out = regexp.MustCompile(`[^a-zA-Z., ]+`).ReplaceAllString(out, "")
	o := strings.Split(out, ".")
	out = ""
	for _, s := range o {
		s = strings.Trim(s, " ")
		if len(s) > 1 {
			out += s + ". "
		}
	}
	return out
}

func prepSentencies(in string) string {
	b, _ := os.ReadFile("english.json")

	// load the training data
	training, _ := sent.LoadTraining(b)

	// create the default sentence tokenizer
	tokenizer := sent.NewSentenceTokenizer(training)
	out := tokenizer.Tokenize(in)
	o := ""
	for _, s := range out {
		l := len(strings.Split(s.Text, " "))
		if l > 5 && l < 30 {
			o += s.Text + " "
		}

	}

	return o
}

func rankedText(in string) (string, string, string) {
	in = cleanString(in)
	in = prepSentencies(in)

	tr := textrank.NewTextRank()
	// Default Rule for parsing.
	rule := textrank.NewDefaultRule()
	// Default Language for filtering stop words.
	language := textrank.NewDefaultLanguage()
	// Default algorithm for ranking text.
	algorithmDef := textrank.NewDefaultAlgorithm()

	// Add text.
	tr.Populate(in, language, rule)
	// Run the ranking.
	tr.Ranking(algorithmDef)

	// Get all phrases by weight. Take only those whose weight is >0.5
	phrasesOut := []string{}
	phrases := textrank.FindPhrases(tr)
	for _, p := range phrases {
		phrasesOut = append(phrasesOut, p.Left+" "+p.Right)
		if p.Weight < 0.5 || len(phrasesOut) > 4 {
			break
		}
	}

	// Get all words order by weight.
	words := textrank.FindSingleWords(tr)
	wordsOut := []string{}
	for _, p := range words {
		wordsOut = append(wordsOut, p.Word)
		if p.Weight < 0.5 || len(wordsOut) > 5 {
			break
		}
	}

	bag := tldr.New()
	sentences, _ := bag.Summarize(in, 5)

	if len(strings.Join(phrasesOut, ", ")) > 500 || len(strings.Join(wordsOut, ", ")) > 500 {
		fmt.Print(wordsOut)
	}

	return strings.Join(phrasesOut, ", "), strings.Join(sentences, " "), strings.Join(wordsOut, ", ")

}
