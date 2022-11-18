#!pip install LangDetect
#!pip install googletrans
#!pip install py-readability-metrics

import re 
import numpy as np 

import pandas as pd
import nltk

from langdetect import detect
from googletrans import Translator
from readability import Readability
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from nltk.stem import WordNetLemmatizer
from sklearn.feature_extraction.text import TfidfVectorizer

nltk.download('stopwords')


# # Plan :  
# * [1. Dataset](#Dataset)
# * [2. Language recognizer](#Language-recognizer)
# * [3. Translation](#Translation)
# * [4. Readability](#Readability)
# * [5. Clean the text](#Clean-the-text)
# * [6. Determine the topic/skills](#Topics/skills)
# * [7. Suggest similar content](#Similarity-to-suggest-content)


# ## Dataset

# This is the current dataset for openedu. Unfortunately some of them don't have any abstract, so they can't be used in NLP. 
df = pd.read_csv('New view.csv')
df = df[["Title", "Abstract"]]
df = df[df['Abstract'].notna()]
df = df.reset_index()
df = df.drop(["index"], axis=1)
print(df)
#I just keep the title and the abstract to simplify.


# ## Language recognizer

# In this part, the language used to write the text is detected. Here all is written in English but I tested it and we can detect other languages with the same code. 
df["language"] = [detect(str(df.Abstract[i])) for i in range(df.shape[0]) ]
print(df)


# ## Translation 

# In this part, all the text were traduct in all the different languages.
translator = Translator()
df["text_en"] = [translator.translate(str(df.Abstract[i])).text for i in range(df.shape[0]) ]
df["text_fr"] = [translator.translate(str(df.Abstract[i]), dest='fr').text for i in range(df.shape[0]) ]
df["text_de"] = [translator.translate(str(df.Abstract[i]), dest='de').text for i in range(df.shape[0]) ]
df["text_it"] = [translator.translate(str(df.Abstract[i]), dest='it').text for i in range(df.shape[0]) ]
df = df.drop(columns=["Abstract"])


# ## Readability

# The readability gives us the minimum required grade level to read the text and help us to determine Level and To Whom. I test 3 differents methods and according to the definition of each of them flesch is the best one. I only use english text because readability works better with english. There is only one problem, to use these tools we need at least 100 words so here I duplicated the text to have enough words. 
df["len"] = [np.ceil(100/len(df.text_en[i].split()))+1 for i in range(df.shape[0]) ]
df["text_readability"] = [np.repeat(df.text_en[i], df.len[i]) for i in range(df.shape[0]) ]
#we need to clean the text
def preprocessor(texte):
        texte=texte.lower()
        texte=re.sub('\.|\,|\)|\(|\[|\]|\:|0|1|2|3|4|5|6|7|8|9|%|!|\?|\«|\»|\+|\xad|\"|;', "", texte)
        texte=re.sub("\'|-", " ", texte)
        return texte

df["text_readability"] = [preprocessor(str(df.text_readability[i])) for i in range(df.shape[0]) ]

df["Dale_Chall"] = [Readability(df.text_readability[i]).dale_chall().grade_levels for i in range(df.shape[0]) ]
df["ARI"] = [Readability(df.text_readability[i]).ari().grade_levels for i in range(df.shape[0]) ]
df["flesch"] = [Readability(df.text_readability[i]).flesch().grade_levels for i in range(df.shape[0]) ]
# site with descirption of all the readability measure https://py-readability-metrics.readthedocs.io/en/latest/flesch.html
 

# ## Clean the text

# I will work with only english traduction to facilitate all the rest of the work. 


# first step: delete some characters
def preprocessor(texte):
        texte=texte.lower()
        texte=re.sub('\.|\,|\)|\(|\[|\]|\:|0|1|2|3|4|5|6|7|8|9|%|!|\?|\«|\»|\+|\xad|\"|;', "", texte)
        texte=re.sub("\'|-", " ", texte)
        return texte

df["text"] = [preprocessor(str(df.text_en[i])) for i in range(df.shape[0]) ]


# we tokenize (separate all the words), it is necessary for the next steps
tokenizer = nltk.RegexpTokenizer(r'\w+')
df["text"] = [tokenizer.tokenize(str(df.text[i])) for i in range(df.shape[0]) ]


# we delete the stopwords (like a the that ...)
for i in range(df.shape[0]):
    df.text[i] = [word for word in df.text[i] if not word in stopwords.words('english') ]
df


# lemmatization : we simplify the words (children -> child, came/comes -> come)
lemmatizer=WordNetLemmatizer()
for i in range(df.shape[0]):
    df.text[i] = [lemmatizer.lemmatize(word) for word in df.text[i]]


# ## Topics/skills

# We need enough data to use a model. So, at the beginning, the creator will have to choose the topics and skills manually. When we will have enough data we will use a model maybe Machine Learning, more precisely neural network. they are, right now, the best model to work with NLP. 


# ## Similarity to suggest content

# We want to suggest similar content. Here the title of the 3 more similar contents are suggested.
results = pd.DataFrame(columns=["sim", "i"])
for j in range(df.shape[0]):
    sim = []
    for i in range(df.shape[0]):
        all_messages = [str(df.text[j]),str(df.text[i])]
        vectorizer = TfidfVectorizer()
        tfidf = vectorizer.fit_transform(all_messages)
        matrix_tf = (tfidf * tfidf.T).A
        cosine_similarity = (tfidf * tfidf.T)[1,0]
        sim.append(cosine_similarity)
        if i == j:
            sim[i]=0
        df_sim = pd.DataFrame(sim, columns=["sim"])
        df_sim["i"] = j
   # result = sorted(list(sim))
    results = results.append(df_sim)
results = results.sort_values(by=['i','sim']).reset_index()
results = results.rename(columns = {'index': 'INDEX'}) 

third = [results.INDEX[i] for i in range(27, 898, 30)]
second = [results.INDEX[i] for i in range(28, 899, 30)]
first = [results.INDEX[i] for i in range(29, 900, 30)]

df["similar1"]=[df.Title[first[i]] for i in range(df.shape[0])]
df["similar2"]=[df.Title[second[i]] for i in range(df.shape[0])]
df["similar3"]=[df.Title[third[i]] for i in range(df.shape[0])]
print(df)

 
# ## matrix similarity
results = pd.DataFrame(columns=["sim", "title1"])
for j in range(df.shape[0]):
    sim = []
    for i in range(df.shape[0]):
        all_messages = [str(df.text[j]),str(df.text[i])]
        vectorizer = TfidfVectorizer()
        tfidf = vectorizer.fit_transform(all_messages)
        matrix_tf = (tfidf * tfidf.T).A
        cosine_similarity = np.round((tfidf * tfidf.T)[1,0],4)
        sim.append(cosine_similarity)
        df_sim = pd.DataFrame(sim, columns=["sim"])
        df_sim["title1"] = df.Title[j]
   # result = sorted(list(sim))
    results = results.append(df_sim)
results = results.reset_index()
results = results.rename(columns = {'index': 'INDEX'}) 
results["title2"] = [df.Title[results.INDEX[i]] for i in range(results.shape[0])]
excel = results.pivot(index="title1", columns="title2", values="sim")
excel.to_csv("similarity.csv")

