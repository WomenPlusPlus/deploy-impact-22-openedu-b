CREATE TABLE public.sito_project (
	id serial4 NOT NULL,
	"by" varchar(1024) NOT NULL,
	by_url varchar(1024) NULL,
	title_en varchar(1024) NOT NULL,
	subtitle_en varchar(1024) NOT NULL,
	title_it varchar(1024) NULL,
	subtitle_it varchar(1024) NULL,
	title_de varchar(1024) NULL,
	subtitle_de varchar(1024) NULL,
	title_fr varchar(1024) NULL,
	subtitle_fr varchar(1024) NULL,
	link varchar(1024) NULL,
	date_from date NULL,
	date_to date NULL,
	project_image varchar(1024) NULL,
	image_credits varchar(1024) NULL,
	project_video varchar(1024) NULL,
	video_credits varchar(1024) NULL,
	short_description_en text NOT NULL,
	more_information_en text NULL,
	short_description_it text NULL,
	more_information_it text NULL,
	short_description_de text NULL,
	more_information_de text NULL,
	short_description_fr text NULL,
	more_information_fr text NULL,
	content_type_id int4 NOT NULL,
	licence_id int4 NULL,
	my_order int4 NOT NULL,
	image_in_home bool NOT NULL,
	published bool NOT NULL,
	CONSTRAINT sito_project_my_order_check CHECK ((my_order >= 0)),
	CONSTRAINT sito_project_pkey PRIMARY KEY (id)
);

INSERT INTO public.sito_project ("by",by_url,title_en,subtitle_en,title_it,subtitle_it,title_de,subtitle_de,title_fr,subtitle_fr,link,date_from,date_to,project_image,image_credits,project_video,video_credits,short_description_en,more_information_en,short_description_it,more_information_it,short_description_de,more_information_de,short_description_fr,more_information_fr,content_type_id,licence_id,my_order,image_in_home,published) VALUES
	 ('Wikimedia Community','https://wikimediafoundation.org/','Editathon','Editing Contribution Marathons on Wikipedia','Editathon','La maratona di contribuzione su Wikipedia','Editathon','Marathons zum Editieren und Mitmachen','Editathon','Le marathon de contribution sur Wikipedia','https://it.wikipedia.org/wiki/Editathon',NULL,NULL,'Europeana_Fashion_Editathon_2013_Stra_04.jpeg','Europeana Fashion Editathon 2013. Niccolò Caranti CC BY SA 3.0',NULL,NULL,'An editathon or contribution marathon is an event during which contributors create, edit and improve articles on a certain theme, subject or specific type of content in order to contribute to projects such as Wikipedia or OpenStreetMap. New contributors usually receive basic training to collaborate on such projects.','<p>Wikipedia editathons take place in accredited educational institutions; scientific research institutions and cultural institutions, such as museums or archives.<br />
&nbsp;<br />
Why join an edit-a-thon?<br />
It helps build the encyclopedia<br />
It provides access to topic experts, and to offline source materials<br />
It builds relationships in the community<br />
It encourages editors to learn from each other, and by doing<br />
It entices people to become new Wikipedians<br />
It helps new Wikipedians to contribute<br />
It&#39;s fun!<br />
(Source: <a href="https://en.wikipedia.org/wiki/Wikipedia:How_to_run_an_edit-a-thon">https://en.wikipedia.org/wiki/Wikipedia:How_to_run_an_edit-a-thon</a>)<br />
&nbsp;<br />
Wikipedia editathon takes place in accredited educational institutions; scientific research institutions and cultural institutions, such as museums or archives.<br />
&nbsp;<br />
<strong>Educational and professional opportunities</strong>: Editathon helps improve european key competence such as: 1 Literacy competence: 4 Digital competence; 5 Personal, social and learning to learn competence; 8 Cultural awareness and expression competence.</p>

<p>&nbsp;</p>','Un editathon è un evento  durante il quale i partecipanti creano, modificano e migliorano gli articoli su un tema, un soggetto o un tipo specifico di contenuto, integrando così progetti come Wikipedia, OpenStreetMap o LocalWiki. I partecipanti ricevono una formazione di base sulle modalità collaborative di questi progetti.','<p>Le edizioni di Wikipedia si svolgono in Istituti di istruzione accreditati; in Istituti di ricerca scientifica e in Istituzioni culturali come musei o archivi.</p>

<p><strong>Opportunit&agrave; educative e professionali: </strong>Editathon contribuisce ad acquisire le competenze chiave per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 4 Competenza digitale; 5 Competenza personale, sociale e capacit&agrave; di imparare ad imparare; 8 Competenza in materia di consapevolezza ed espressione culturale.</p>

<p>&nbsp;</p>','Ein Editathon ist ein Mitmach-Marathon, an dem Autoren von Online-Plattformen wie Wikipedia, OpenStreetMap oder LocalWiki kollaborativ Inhalte zu einem bestimmten Thema erstellen oder verbessern. Neu Teilnehmende erhalten meist eine Einführung, um an solchen Projekten mitzuarbeiten.','<p>Wikipedia-Editathons finden in Bildungseinrichtungen, Forschungsst&auml;tten oder kulturellen Institutionen wie Museen oder Archiven statt.</p>

<p>Warum an einem Editathon teilnehmen?</p>

<ul>
	<li>Es verbessert Wikipedia</li>
	<li>Es verschafft Zugang zu Expertenwissen und Offline-Quellenmaterialien</li>
	<li>Es baut Beziehungen in der Community auf</li>
	<li>Es erm&ouml;glicht Editoren, voneinander zu lernen</li>
	<li>Es ermutigt Menschen, neue Wikipedianerinnen zu werden</li>
	<li>Es erleichtert neuen Wikipedianern, Betr&auml;ge zu leisten</li>
	<li>Es macht Spass!</li>
</ul>

<p>(Quelle:&nbsp;<a href="https://en.wikipedia.org/wiki/Wikipedia:How_to_run_an_edit-a-thon">https://en.wikipedia.org/wiki/Wikipedia:How_to_run_an_edit-a-thon</a>)</p>

<p><br />
<strong>M&ouml;glichkeiten f&uuml;r Bildung und Beruf</strong>: Editathons unterst&uuml;tzen&nbsp;bei der Verbesserung der EU-Schl&uuml;sselkompetenzen wie:&nbsp;&nbsp;1 Lese- und Schreibkompetenz; 4 Digitale Kompetenz; 5 Pers&ouml;nliche, soziale und Lernkompetenz; 8 Kulturbewusstsein und kulturelle Ausdrucksf&auml;higkeit.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>','Un editathon ou marathon de contribution est un événement au cours duquel les contributeurs créent, modifient et améliorent des articles sur un thème, un sujet ou un type de contenu spécifique sur des projets tels que Wikipedia, OpenStreetMap ou LocalWiki. Les nouveaux contributeurs reçoivent une formation de base pour collaborer sur les projets concernés.','<p>Les editathons Wikip&eacute;dia ont lieu dans des &eacute;tablissements d&#39;enseignement; institutions de recherche scientifique ou institutions culturelles, telles que les mus&eacute;es ou les archives.</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:</strong> Editathon contribue &agrave; am&eacute;liorer les <a href="https://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">comp&eacute;tences cl&eacute;s europ&eacute;ennes</a> telles que: 1 Comp&eacute;tence lecture et &eacute;criture, 4 Comp&eacute;tence num&eacute;rique, 5 Comp&eacute;tences personnelles et sociales et capacit&eacute; d&rsquo;apprendre &agrave; apprendre; 8 Comp&eacute;tence relative &agrave; la sensibilit&eacute; et &agrave; l&rsquo;expression culturelles.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>',2,2,17,true,true),
	 ('Wikimedia France',NULL,'Enhancing your knowledge in Wikipedia','Students and Wikipedia','Migliorare le tue conoscenze in Wikipedia','Gli studenti e Wikipedia','Erweitern Sie Ihr Wissen in Wikipedia','Studenten und Wikipedia','Améliorer vos connaissances dans Wikipédia','Les étudiants et Wikipédia',NULL,NULL,NULL,'',NULL,NULL,NULL,'The goal is to guide PhD students or young researchers during their contributions, to know how to create and spread content on Wikipedia and Wikimedia Commons.','','L''obiettivo è quello di guidare gli studenti di dottorato o i giovani ricercatori nei i loro contributi, per sapere come creare e diffondere contenuti su Wikipedia e Wikimedia Commons.','','Das Ziel ist es, Doktoranden oder junge Forscher bei ihren Beiträgen anzuleiten, damit sie wissen, wie man Inhalte auf Wikipedia und Wikimedia Commons erstellt und verbreitet.','','L''objectif est de guider les doctorants ou les jeunes chercheurs au cours de leurs contributions, afin de savoir comment créer et diffuser du contenu sur Wikipédia et Wikimedia Commons.','',2,NULL,29,false,false),
	 ('Wikimedia Community','https://wikimediafoundation.org/','How to run an editathon','A guide for how (and why) to run a Wikipedia Editathon','Come organizzare un editathon','Una guida su come (e perché) eseguire un Editathon di Wikipedia','Wie Sie einen Editathon organisieren','Wie (und warum) einen Editathon durchführen – erfahren Sie es hier','Comment organiser un editathon','Un guide pour savoir comment (et pourquoi) organiser un Editathon Wikipedia','https://en.wikipedia.org/wiki/Wikipedia:How_to_run_an_edit-a-thon',NULL,NULL,'1024px-Basquiat_edit-a-thon_MoMA_NYU_Nov_2015-07.jpg','Kosboot / CC BY-SA',NULL,NULL,'You will find many details on how to run an Editathon as: What you should have beforehand. Ways to advertise an editathon. What to do during and afterwards.','<p>An editathon can be: a scheduled time where people edit Wikipedia together, whether offline, online, or a mix of both; typically focused on a specific topic, such as science or women&#39;s history; a way to give newcomers an insight into how Wikipedia works.&nbsp;</p>

<p>Editathons improve the encyclopedia and can be a great way to help new Wikipedians learn to edit. This is quite different from large conferences such as Wikimania, which often have multiple speakers or panels about a huge variety of topics. An editathon is also unlike a regular meetup, which tends to be without a single goal and/or for socializing.&nbsp;</p>

<p>We recommend <a href="http://en.wikipedia.org/wiki/Wikipedia:How_to_run_an_edit-a-thon">this guide</a> for how (and why) to run a Wikipedia editathon: you will find many details as:&nbsp;</p>

<ul>
	<li>Why run an editathon?</li>
	<li>What you should have beforehand</li>
	<li>Ways to advertise an editathon</li>
	<li>During an editathon</li>
	<li>What to do afterwards</li>
</ul>

<p>&nbsp;</p>

<p><strong>Educational and professional opportunities:</strong> Editathon helps improve <a href="http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">european key competence</a> such as: 1 Literacy competence: 4 Digital competence; 5 Personal, social and learning to learn competence; 8 Cultural awareness and expression competence</p>

<p>&nbsp;</p>','Troverai molti dettagli per organizzare un Editathon: Perché fare un Editathon? Cosa dovresti aver preparato; i modi per pubblicizzare l''evento; e cosa fare durante e dopo.','<p>Un editathon pu&ograve; essere un orario in cui le persone modificano Wikipedia insieme, offline, online o una combinazione di entrambi; &egrave; tipicamente incentrato su un argomento specifico, come la scienza o la storia delle donne. Le modifiche migliorano l&#39;enciclopedia e possono essere un ottimo modo per aiutare i nuovi Wikipediani a imparare a modificare.&nbsp;</p>

<p>Consigliamo di visitare questa pagina <a href="https://it.wikipedia.org/wiki/Aiuto:Come_organizzare_un_editathon">https://it.wikipedia.org/wiki/Aiuto:Come_organizzare_un_editathon</a> per trovare dettagli su:&nbsp;</p>

<ul>
	<li>Perch&eacute; eseguire un editathon?</li>
	<li>Cosa dovresti aver preparato in anticipo</li>
	<li>Modi per pubblicizzare un editathon</li>
	<li>Durante un editathon</li>
	<li>Cosa fare dopo</li>
</ul>

<p>&nbsp;</p>

<p><strong>Opportunit&agrave; educative e professionali: </strong>Editathon contribuisce ad acquisire le <a href="https://eur-lex.europa.eu/legal-content/IT/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">competenze chiave europee</a> per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 4 Competenza digitale; 5 Competenza personale, sociale e capacit&agrave; di imparare ad imparare; 8 Competenza in materia di consapevolezza ed espressione culturale.</p>','Erfahren Sie, was ein Editathon ist und was bei der Durchführung zu beachten ist.','<p>Ein Editathon ist ein Treffen (real oder online), bei dem Leute gemeinsam Wikipedia-Artikel bearbeiten oder neu erstellen. Meist fokussiert sich ein Editathon auf ein bestimmtes Thema, z. B. einen Bereich der Wissenschaft oder Frauengeschichte. Ein Editathon bietet zudem Neulingen einen Einblick, wie Wikipedia funktioniert.&nbsp;</p>

<p>Editathons leisten einen Beitrag zu Wikipedia und sind eine gute Gelegenheit, neuen Wikipedianern das Editieren zu erkl&auml;ren. Sie unterscheiden sich von Konferenzen wie Wikimania, bei denen Vortr&auml;ge&nbsp;und Diskussionsrunden zu einer Vielzahl von Themen stattfinden.&nbsp;</p>

<p>Auf der Seite <a href="https://de.wikipedia.org/wiki/Wikipedia:Edit-a-thon">Wikipedia:Edit-a-thon</a> finden Sie Informationen &uuml;ber aktuelle Editathons im deutschsprachigen Raum. Anleitungen, wie Sie selbst einen Editathon durchf&uuml;hren, sind auf <a href="https://en.wikipedia.org/wiki/Wikipedia:How_to_run_an_edit-a-thon">Englisch</a>, <a href="https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Journ%C3%A9es_contributives">Franz&ouml;sisch</a> und <a href="https://it.wikipedia.org/wiki/Aiuto:Come_organizzare_un_editathon">Italienisch</a> verf&uuml;gbar.</p>

<p>Auf diesen Seiten werden folgende Fragen beantwortet:&nbsp;</p>

<ul>
	<li>Warum einen Editathon durchf&uuml;hren?</li>
	<li>Was sollte vor Beginn vorbereitet werden?</li>
	<li>Wie werben Sie f&uuml;r einen Editathon?</li>
	<li>Was geschieht w&auml;hrend eines Editathons?</li>
	<li>Was ist danach zu tun?</li>
</ul>

<p><br />
<strong>M&ouml;glichkeiten f&uuml;r Bildung und Beruf:</strong> Editathon unterst&uuml;tzt bei der Verbesserung der EU-Schl&uuml;sselkompetenzen wie: 1 Lese- und Schreibkompetenz: 4 Digitale Kompetenz; 5 Pers&ouml;nliche, soziale und Lernkompetenz; 8 Kulturbewusstsein und kulturelle Ausdrucksf&auml;higkeit.</p>','Vous trouverez de nombreux détails pour organiser un editathon: pourquoi le faire? Ce que vous devez avoir préparé; les moyens d''annoncer un eeditathon; et que faire pendant et après.','<p>Un editathon peut &ecirc;tre un moment o&ugrave; les personnes &eacute;ditent Wikip&eacute;dia ensemble, hors ligne, en ligne ou une combinaison des deux; o&ugrave; il se concentre g&eacute;n&eacute;ralement sur un sujet sp&eacute;cifique, comme la science ou l&#39;histoire des femmes.&nbsp;</p>

<p>Les modifications am&eacute;liorent l&#39;encyclop&eacute;die et peuvent &ecirc;tre un excellent moyen d&#39;aider les nouveaux wikip&eacute;diens &agrave; apprendre &agrave; modifier.</p>

<p>Nous vous recommandons <a href="https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Journ%C3%A9es_contributives">ce&nbsp;</a><a href="http://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Journ%C3%A9es_contributives">guide </a>o&ugrave; vous trouverez de nombreux d&eacute;tails sur:</p>

<ul>
	<li>Pourquoi organiser&nbsp;un editathon?</li>
	<li>Ce que vous devriez preparer &agrave; l&#39;avance</li>
	<li>Faire de la publicit&eacute; pour un editathon</li>
	<li>Lors d&#39;un editathon</li>
	<li>Que faire ensuite</li>
</ul>

<p>&nbsp;</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:</strong>&nbsp;Editathon contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes telles que: 1 Lecture et &eacute;criture, 4 Comp&eacute;tence num&eacute;rique, 5 Comp&eacute;tences personnelles et sociales et capacit&eacute; d&rsquo;apprendre &agrave; apprendre; 8 relative &agrave; la sensibilit&eacute; et &agrave; l&rsquo;expression culturelles</p>

<p>&nbsp;</p>',1,2,14,true,true),
	 ('Wiki Edu','https://wikiedu.org/','Use the evaluation dashboard','How to start and monitor editing activities on Wikipedia','Utilizza la dashboard di valutazione','Come avviare il monitoraggio delle attività di editing su Wikipedia','Das Evaluation Dashboard verwenden','Wie Sie sich den Überblick über Editing-Aktivitäten auf Wikipedia verschaffen','Utilisez le panneau d''évaluation','Comment commencer l''évaluation les activités d''édition de Wikipédia','https://meta.wikimedia.org/wiki/Programs_%26_Events_Dashboard',NULL,NULL,'',NULL,'https://commons.wikimedia.org/wiki/File:How_to_Use_the_Dashboard_(2_of_5).webm?embedplayer=yes','Amanda Bittaker 2016','The basic purpose of the dashboard is to provide an easy way to organize groups of editors who are working on a common project, and to make it easy to keep track of what they are doing and what they''ve contributed.','','Lo scopo principale del dashboard è fornire un modo semplice per organizzare gruppi di editor che stanno lavorando a un progetto comune e per rendere facile tenere traccia di ciò che stanno facendo e dei contributi alle voci. Questo video aiuta a capire come utilizzare lo strumento.','','Das Evaluation Dashboard vereinfacht die Koordination von Gruppen, die gemeinsam an einem Editing-Projekt auf Wikipedia arbeiten, und verschafft Ihnen den Überblick darüber, was wer tut.','','L''objectif du dashboard est de fournir un moyen facile d''organiser des groupes d''éditeurs qui travaillent sur un projet commun et de faciliter le suivi de ce qu''ils font et ce à quoi ils ont contribué. Cette vidéo et le guide vous aide à comprendre comment utiliser l''outil.','',1,2,10,false,true),
	 ('Wikimedia Community','https://wikimediafoundation.org/','WikiVoyage','A free online world travel guide, written by volunteers','WikiVoyage','Una guida turistica mondiale, scritta da utenti volontari','WikiVoyage','Ein weltweiter freier Reiseführer','WikiVoyage','Un guide de voyage mondial, écrits par des bénévoles','https://www.wikivoyage.org',NULL,NULL,'1024px-DSC00031_French_Polynesia_Moorea_Island_8044046451-1.jpg','Daniel Julie Paris, France / CC BY 2.0',NULL,NULL,'Wikivoyage is a free online world travel guide, written by volunteers; which intends to be a reliable resource of free contents, updated by voluntary users (wikivoyagers) from different parts of the world.It is possible to integrate entries, insert itineraries and further details.','<p>Wikivoyage&#39;s purpose is to create an updatable, reliable and free content world travel guide.</p>

<p>It is still a young and constantly growing project, anyone who wishes to contribute with texts, images and corrections will be welcome. Articles can cover different levels of geographic specificity, from continents to districts of a city. The project also includes articles on travel-related topics, phrasebooks for travelers, and suggested itineraries.</p>

<p><strong>Educational and professional opportunities: </strong>WikiVoyage helps improve european key competence such as: 1 Literacy competence: 2 Multilingual competence; 4 Digital competence; 5 Personal, social and learning to learn competence; 6 Citizenship competence; 8 Cultural awareness and expression competence.</p>','Wikivoyage è una guida turistica gratuita, una risorsa affidabile e dal contenuto libero. Viene scritta ed aggiornata da utenti volontari di tutto il mondo. Tutti possono integrare le voci inserendo percorsi e dettagli.','<p>Wikivoyage &egrave; un progetto il cui scopo &egrave; la creazione di una guida turistica mondiale aggiornabile, affidabile e dal contenuto libero.</p>

<p>&Egrave; ancora un progetto giovane e in costante crescita, per cui chiunque desideri contribuire con testi, immagini e correzioni, non potr&agrave; essere che il benvenuto. Gli articoli trattano molti argomenti che spaziano dai continenti ai singoli quartieri della citt&agrave;. Il progetto include articoli su viaggi, frasari per viaggiatori o itinerari suggeriti.</p>

<p><strong>Opportunit&agrave; educative e professionali:</strong> WikiVoyage contribuisce ad acquisire le competenze chiave per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 2 Competenza multilinguistica; 4 Competenza digitale; 5 Competenza personale, sociale e capacit&agrave; di imparare ad imparare; 6 Competenza di cittadinanza; 8 Competenza in materia di consapevolezza ed espressione culturale</p>','Wikivoyage ist ein weltweiter, freier Reiseführer, der praktisch anwendbares Wissen zu Reisezielen und Reisethemen anbietet. Die Inhalte werden von Freiwilligen (Wikivoyagers) erstellt und bearbeitet. Jedermann kann neue Einträge, Routen oder Zusatzinformationen eingeben.','<p>Wikivoyage bezweckt, einen jederzeit aktualisierbaren, zuverl&auml;ssigen Weltreisef&uuml;hrer mit freien Inhalten zu schaffen.</p>

<p>In diesem jungen, laufend wachsenden Projekt sind alle willkommen, die mit Texten, Bildern und Korrekturen einen Beitrag leisten m&ouml;chten. Die Artikel decken geografische Einheiten von ganzen Kontinenten bis zu einzelnen Stadtquartieren ab. Das Projekt umfasst auch Artikel zu Reisethemen, Sprachf&uuml;hrer f&uuml;r Reisende und Routenvorschl&auml;ge.</p>

<p><strong>M&ouml;glichkeiten f&uuml;r Bildung&nbsp;und Beruf:&nbsp;</strong>Wikipedia unterst&uuml;tzt bei der Verbesserung der EU-Schl&uuml;sselkompetenzen wie: &nbsp;1 Lese- und Schreibkompetenz; 2 Mehrsprachenkompetenz; 3 Mathematische Kompetenz und Kompetenz in Naturwissenschaften, Informatik und Technik; 4 Digitale Kompetenz; 5 Pers&ouml;nliche, soziale und Lernkompetenz; 6 B&uuml;rgerkompetenz; 7. Unternehmerische Kompetenz; 8 Kulturbewusstsein und kulturelle Ausdrucksf&auml;higkeit.</p>','Wikivoyage est un guide de voyage mondial, avec ressource fiable et contenus gratuits, écrits et mis à jour par des bénévoles de différentes parties du monde. Il est possible d''intégrer des article, d''insérer des itinéraires et d''autres détails concernant votre région.','<p>Wikivoyage est un projet dont le but est de cr&eacute;er un guide de voyage mondial actualisable, fiable et gratuit.</p>

<p>C&#39;est encore un projet jeune et en constante croissance, donc toute personne souhaitant contribuer avec des textes, des images et des corrections sera la bienvenue. Les articles peuvent couvrir diff&eacute;rents niveaux de sp&eacute;cificit&eacute; g&eacute;ographique, des continents aux quartiers d&#39;une ville. Le projet comprend &eacute;galement des articles sur des sujets li&eacute;s aux voyages, des guides de conversation pour les voyageurs et des itin&eacute;raires sugg&eacute;r&eacute;s.</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:&nbsp;</strong>WikiVoyage contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes telles que: 1 Comp&eacute;tence Lecture et &eacute;criture, 2 Comp&eacute;tence Multilinguisme, 4 Comp&eacute;tence num&eacute;rique, 5 Comp&eacute;tences personnelles et sociales et capacit&eacute; d&rsquo;apprendre &agrave; apprendre; 6 Comp&eacute;tences citoyennes; 8 relative &agrave; la sensibilit&eacute; et &agrave; l&rsquo;expression culturelles.</p>',2,2,6,false,true),
	 ('Wikimedia CH','https://wikimedia.ch/en/','Wiki2map','Create mental maps with Wikimedia contents','Wiki2map','Crea mappe mentali con i contenuti delle piattaforme Wikimedia','Wiki2map','Mindmaps aus Wikimedia-Inhalten','Wiki2map','Créez des cartes mentales avec le contenu de Wikimedia','https://wiki2map.org/',NULL,NULL,'Screen_Shot_2020-11-17_at_11.47.11.png','wiki2map.org',NULL,NULL,'It is a site which allows you to create mental maps drawing on the contents of the Wikimedia platforms, created thanks to funding from Wikimedia-CH. It facilitates the understanding of fundamental concepts through a mental map, thus supporting even those with reading difficulties.','<p>Wiki2map is particularly useful for reading lessons on Wikiversity, especially for primary and secondary schools.</p>

<p><strong>Educational and professional opportunities: </strong>Wiki2map helps improve <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">european key competence</a> such as: 1 Literacy competence: 2 Multilingual competence.</p>

<p>&nbsp;</p>','E’ un sito che permette di creare mappe mentali attingendo dai contenuti delle piattaforme di wikimedia, realizzato grazie ad un finanziamento di Wikimedia-CH. Facilita la comprensione di concetti fondamentali tramite mappa mentale, sostenendo così anche chi ha difficoltà di lettura.','<p>Wiki2map &egrave; particolarmente utile per la lettura delle lezioni su Wikiversity, soprattutto per le scuole primarie e secondarie di primo grado.</p>

<p><strong>Opportunit&agrave; educative e professionali: </strong>Wiki2map contribuisce ad acquisire <a href="https://eur-lex.europa.eu/legal-content/IT/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">competenze chiave europee</a> per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 2 Competenza multilinguistica.</p>

<p><br />
&nbsp;</p>','Wiki2map erstellt ausgehend von den Inhalten der Wikimedia-Plattformen eine Mindmap. Das Projekt entstand dank Finanzbeiträgen von Wikimedia CH. Die Mindmap von Wiki2map erleichtert das Verständnis grundlegender Begriffe und unterstützt dadurch auch Personen mit Leseschwierigkeiten.','<p>Wiki2map ist besonders n&uuml;tzlich f&uuml;r den Leseunterricht auf Wikiversity, vor allem in Schulen der Primar- und Sekundarstufe.</p>

<p><strong>M&ouml;glicgkeiten f&uuml;r Bildung&nbsp;und Beruf: </strong>Wiki2map hilft zur Verbesserung der <a href="https://eur-lex.europa.eu/legal-content/DE/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN" target="_blank">EU-Schl&uuml;sselkompetenzen</a> wie: &nbsp;1 Lese- und Schreibkompetenz; 2 Mehrsprachenkompetenz.</p>

<p><br />
&nbsp;</p>','Il s''agit d''un site qui vous permet de créer des cartes mentales à partir du contenu des plateformes Wikimedia, créé grâce au financement de Wikimedia CH.
Il simplifie la mise en lien de concepts fondamentaux par le biais d’une arborescence, et facilite la réflexion pour les personnes ayant des difficultés de lecture.','<p>Wiki2map est utile pour lire des le&ccedil;ons de la Wikiversity, surtout pour les niveaux primaires et secondaires.</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles: </strong>Wiki2map &nbsp;&nbsp;contribue &agrave; am&eacute;liorer les <a href="https://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">comp&eacute;tences cl&eacute;s europ&eacute;ennes</a>: 1 Comp&eacute;tence lecture et &eacute;criture, 2&nbsp;&nbsp;Comp&eacute;tence multilinguisme.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>',2,2,5,false,true),
	 ('WIKIMEDIA Switzerland and Estonia','https://www.wikisciencecompetition.org/','Wiki Science Competition','The international science photo contest','Wiki Science Competition','Concorso internazionale di fotografia scientifica','Wiki Science Competition','Internationaler Wettbewerb für Wissenschaftsfotos','Wiki Science Competition','Le concours international de photos scientifiques','https://www.wikisciencecompetition.org/',NULL,NULL,'Screenshot_2020-04-21_16.32.48.png','Robert Kamalov, Irina Dorosheva, Alexander Vokhmintsev, Ilya Weinstein - CC BY SA',NULL,NULL,'Wiki Science Competition is an international scientific photo competition organised by the Wikimedia community. The annual competition is open to all and participants must create science-related images and upload them under a free license. It is impossible to imagine our culture without science. And in the visual world we live in, it''s not enough to talk about science; you have to see it.','<p>Participate Check here the competition calendar in the countries that have an organizing team for this annual competition. For all countries without an organizing team, the upload time is November 15 to December 15.</p>

<p>You can participate in the following six categories:</p>

<p>&lt; People in Science - Scientists in their natural habitat</p>

<p>&lt; Microscopy images - Optical, electron, and scanning probe microscopy images all fall under this category.</p>

<p>&lt; Non-photographic media - Audio and video files, computer-generated imagery, etc.</p>

<p>&lt; Image sets - Thematically linked images, that can be viewed as one set. Image set could be made up from up to 10 separate images.</p>

<p>&lt; Wildlife &amp; nature - Organisms who grow or live wild in an area. Macro photography also falls under this category.</p>

<p>&lt; General category - Everything else goes into this category, from archaeology to thermodynamics and from volcanology to astronomy.</p>

<p><strong>Educational and professional opportunities:&nbsp;</strong>Wiki Science Competition helps improve some European key competence such as Mathematical competence and competence in science, technology, engineering; Digital competence; Citizenship competence; Cultural awareness and expressive competence.</p>','Wiki Science Competition è un concorso fotografico internazionale organizzato dal movimento Wikimedia.  Il concorso annuale è aperto a tutti e i partecipanti devono creare immagini scientifiche e caricarle su Wikimedia Commons con una licenza gratuita. È impossibile immaginare la nostra cultura senza scienza. E nel mondo visivo in cui viviamo, non basta parlare di scienza; devi vederla.','<p>Partecipare Controlla il calendario deI concorsi nei paesi che hanno una squadra organizzativa per questa competizione annuale. Per tutti i paesi senza un team organizzativo, il tempo di caricamento va dal 15 novembre al 15 dicembre.</p>

<p>Puoi partecipare alle seguenti sei categorie:</p>

<p>&lt; People in Science - Scienziati nel loro habitat naturale</p>

<p>&lt; Immagini di microscopia - Le immagini di microscopia ottica, elettronica e con sonda di scansione rientrano tutte in questa categoria.</p>

<p>&lt; Supporti non fotografici -&nbsp;File audio e video, immagini generate al computer, ecc.</p>

<p>&lt; Set di immagini - Immagini collegate in modo tematico, che possono essere visualizzate come un unico set. Il set di immagini pu&ograve; essere composto da un massimo di 10 immagini separate.</p>

<p>&lt; Fauna e natura - Organismi che crescono o vivono selvatici in un&#39;area. Anche la macrofotografia rientra in questa categoria.</p>

<p>&lt; Categoria generale - Tutto il resto rientra in questa categoria, dall&#39;archeologia alla termodinamica e dalla vulcanologia all&#39;astronomia.</p>

<p><strong>Opportunit&agrave; formative e professionali:&nbsp;</strong>Wiki Science Competition aiuta a migliorare alcune competenze chiave europee come la Competenza matematica; la Competenza in scienza, tecnologia, ingegneria; Competenza digitale; Competenza di cittadinanza; Consapevolezza culturale e competenza espressiva.</p>','Mit dem Wiki-Wissenschaftswettbewerb sucht die Wikimedia-Community nach hervorragenden wissenschaftlichen Fotos. Der jährlich stattfindende Wettbewerb steht allen offen, die Bilder mit Bezug zur Wissenschaft erstellen und unter einer freien Lizenz in Wikimedia Commons hochladen wollen. Aus unserer Kultur ist Wissenschaft nicht mehr wegzudenken. Und es genügt nicht, über Wissenschaft zu sprechen – man muss sie sehen.','<p>Der Wettbewerb findet j&auml;hrlich statt. Um am Wettbewerb teilzunehmen, ist in denjenigen L&auml;ndern, die ein Organisationsteam f&uuml;r den Wettbewerb haben, der dort geltende Kalender zu pr&uuml;fen. F&uuml;r alle L&auml;nder ohne Organisationsteam gilt f&uuml;r den Upload die Zeit vom 15. November bis 15. Dezember.</p>

<p>Sie k&ouml;nnen in den folgenden sechs Kategorien teilnehmen:</p>

<p>&ndash; Menschen in der Wissenschaft: Forschende in ihrem nat&uuml;rlichen Lebensraum</p>

<p>&ndash; Mikroskopie-Bilder: Optische, Elektronen- und Rastersondenmikroskopie-Bilder fallen in diese Kategorie</p>

<p>&ndash; Nicht-fotografische Medien: Audio- und Videodateien, computergenerierte Bilder etc.</p>

<p>&ndash; Bilds&auml;tze: Thematisch verkn&uuml;pfte Bilder, die als ein Satz betrachtet werden k&ouml;nnen. Ein Bildsatz kann sich aus bis zu 10 Einzelbildern zusammensetzen.</p>

<p>&ndash; Wildlife &amp; Natur: Organismen, die in einem Gebiet wild wachsen oder leben. Auch Makrofotografie f&auml;llt unter diese Kategorie.</p>

<p>&ndash; Allgemeine Kategorie: Alles andere &ndash; von Arch&auml;ologie bis Thermodynamik und von Vulkanologie bis Astronomie &ndash; f&auml;llt in diese Kategorie.</p>

<p><strong>M&ouml;glichkeiten f&uuml;r Bildung und Beruf: </strong>Der Wettbewerb &laquo;Wiki Science Competition&raquo; hilft bei der Verbesserung von EU-Schl&uuml;sselkompetenzen wie: Mathematische Kompetenz und Kompetenz in Naturwissenschaften, Informatik und Technik; Digitale Kompetenz; B&uuml;rgerkompetenz; Kulturbewusstsein und kulturelle Ausdrucksf&auml;higkeit.<br />
&nbsp;</p>','L''objectif du concours est d''impliquer le grand public - lecteurs et utilisateurs de Wikipédia, photographes, amateurs - pour faire des photos de monuments du patrimoine culturel et les téléverser sur Wikimedia Commons pour pouvoir illustrer les articles Wikipédia et les autres projets Wikimedia. Wiki Loves Monuments est un concours photographique international annuel organisé dans le monde entier par les membres de la communauté Wikimedia avec l''aide des affiliés nationaux de Wikimedia.','<p>Participer Consultez ici le calendrier des comp&eacute;titions dans les pays qui ont une &eacute;quipe organisatrice pour cette comp&eacute;tition annuelle. Pour tous les pays sans &eacute;quipe d&#39;organisation, le temps de t&eacute;l&eacute;chargement est du 15 novembre au 15 d&eacute;cembre.</p>

<p>Vous pouvez participer aux six cat&eacute;gories suivantes:</p>

<p>&lt; People in Science - Scientifiques dans leur habitat naturel</p>

<p>&lt; Images de microscopie - Les images de microscopie optique, &eacute;lectronique et &agrave; sonde &agrave; balayage entrent toutes dans cette cat&eacute;gorie.</p>

<p>&lt; Supports non photographiques - Fichiers audio et vid&eacute;o, images g&eacute;n&eacute;r&eacute;es par ordinateur, etc.</p>

<p>&lt; Ensembles d&#39;images - Images li&eacute;es par th&egrave;me, qui peuvent &ecirc;tre visualis&eacute;es comme un ensemble. L&#39;ensemble d&#39;images peut &ecirc;tre constitu&eacute; de jusqu&#39;&agrave; 10 images distinctes.</p>

<p>&lt; Faune et nature - Organismes qui poussent ou vivent &agrave; l&#39;&eacute;tat sauvage dans une r&eacute;gion. La macrophotographie entre &eacute;galement dans cette cat&eacute;gorie.</p>

<p>&lt; Cat&eacute;gorie g&eacute;n&eacute;rale - Tout le reste entre dans cette cat&eacute;gorie, de l&#39;arch&eacute;ologie &agrave; la thermodynamique et de la volcanologie &agrave; l&#39;astronomie.</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:&nbsp;</strong> Le concours scientifique Wiki contribue &agrave; am&eacute;liorer certaines comp&eacute;tences cl&eacute;s europ&eacute;ennes telles que la comp&eacute;tence math&eacute;matique et la comp&eacute;tence en science, technologie, ing&eacute;nierie; Comp&eacute;tence num&eacute;rique; Comp&eacute;tence en mati&egrave;re de citoyennet&eacute;; Conscience culturelle et comp&eacute;tence expressive.</p>',2,2,9,true,true),
	 ('Wikimedia CH','https://wikimedia.ch/en/','WMCH Map Service','Explore cultural locations, check article coverage and contribute','WMCH Map Service','Cerca luoghi culturali e contribuisci','WMCH Map Service','Standorte und Artikel prüfen – Beiträge leisten','WMCH Map Service','Cartographier les articles et encourager la contribution','https://map.wikimedia.swiss',NULL,NULL,'Screenshot_2020-04-22_14.46.47.png','https://map.wikimedia.swiss',NULL,NULL,'The web site allows you to locate Swiss cultural institutions and get information. The map is generated by extracting the geographical coordinates from Wikidata and connecting the information from Wikipedia.','<p>The interactive geographic map is an additional incentive for the user who can immediately identify the missing items on Wikipedia and provide new contributions to enrich free knowledge.</p>

<p>You will find several interactive maps to explore as:</p>

<ul>
	<li>Swiss Museums&nbsp;</li>
	<li>Swiss Archives</li>
	<li>Archives CH-AT-DE</li>
	<li>Museums CH-DE-AT</li>
	<li>Museums CH-DE-AT-IT-FR</li>
	<li>Swiss railway stations</li>
	<li>Swiss castles</li>
	<li>Roman thermal baths</li>
	<li>Libraries CH-LI-DE-AT</li>
</ul>

<p>&nbsp;</p>

<p><strong>Educational and professional opportunities: </strong>WMCH Map Service helps improve european key competence such as: 2 Multilingual competence; 6 Citizenship competence; 7 Entrepreneurship competence; 8 Cultural awareness and expression competence.</p>','Il sito Web consente di individuare le istituzioni culturali e di ottenere informazioni. La mappa viene generata estraendo le coordinate geografiche da Wikidata e collegando le informazioni provenienti da Wikipedia.','<p>La mappa geografica interattiva &egrave; un ulteriore incentivo per l&#39;utente che pu&ograve; identificare immediatamente gli elementi mancanti su Wikipedia e fornire nuovi contributi per arricchire la conoscenza libera.</p>

<p>Troverai diverse mappe interattive da esplorare:</p>

<ul>
	<li>Musei Svizzeri</li>
	<li>Archivi svizzeri</li>
	<li>Archivi CH-AT-DE</li>
	<li>Musei in CH-AT-DE</li>
	<li>Musei CH-DE-AT-IT-FR</li>
	<li>Stazioni ferroviarie svizzere</li>
	<li>Castelli svizzeri</li>
	<li>Terme romane</li>
	<li>Biblioteche CH-LI-DE-AT</li>
</ul>

<p>&nbsp;</p>

<p><strong>Opportunit&agrave; educative e professionali:</strong> WMCH Map Service contribuisce ad acquisire competenze chiave europee per l&rsquo;apprendimento permanente, in particolare: 2 Competenza multilinguistica; 6 Competenza di cittadinanza; 7 Competenza imprenditoriale; 8 Competenza in materia di consapevolezza ed espressione culturale.</p>','WMCH Map Service ermöglicht es, kulturelle Einrichtungen der Schweiz mit begleitenden Informationen zu finden. Die Karte benutzt die geografischen Koordinaten in Wikidata und verknüpft sie mit Informationen aus Wikipedia.','<p>Die interaktive Landkarte zeigt Elemente, die auf Wikipedia fehlen, und bietet so einen Anreiz f&uuml;r Benutzerinnen und Benutzer, Beitr&auml;ge zur Bereicherung des freien Wissens zu liefern.</p>

<p>Sie finden verschiedene interaktive Karten, die Sie erkunden k&ouml;nnen:</p>

<ul>
	<li>Schweizer Museen</li>
	<li>Schweizer Archiv</li>
	<li>Archive in CH, A, D</li>
	<li>Museen in&nbsp;CH, A, D</li>
	<li>Museen in CH, A, D, I, F</li>
	<li>Schweizer Bahnh&ouml;fe</li>
	<li>Schweizer Schl&ouml;sser</li>
	<li>R&ouml;mische Thermen</li>
	<li>Bibliotheken in CH, LI, A, D</li>
</ul>

<p>&nbsp;</p>

<p><strong>M&ouml;glichkeiten f&uuml;r Bildung&nbsp;und Beruf: </strong>WMCH Map Service tr&auml;gt zur Verbesserung&nbsp;der&nbsp;<a href="https://eur-lex.europa.eu/legal-content/DE/TXT/PDF/?uri=CELEX:32018H0604(01)">EU-Schl&uuml;sselkompetenzen</a>&nbsp;bei, insbesondere: 2 Mehrsprachenkompetenz; 6 B&uuml;rgerkompetenz; 7 Unternehmerische Kompetenz; 8 Kulturbewusstsein und kulturelle Ausdrucksf&auml;higkeit.</p>','Ce site vous permet de localiser les institutions culturelles suisses et d''obtenir des informations concernant leur présence sur Wikipédia. La carte est générée en extrayant les coordonnées géographiques de Wikidata et en les liant aux articles Wikipédia.','<p>La carte g&eacute;ographique interactive est une incitation suppl&eacute;mentaire pour l&#39;utilisateur qui peut imm&eacute;diatement identifier les &eacute;l&eacute;ments manquants sur Wikip&eacute;dia et contribuer pour partager des connaissances.</p>

<p>Vous trouverez plusieurs cartes interactives &agrave; explorer:</p>

<ul>
	<li>Mus&eacute;es suisses</li>
	<li>Archives suisses</li>
	<li>Archives CH-AT-DE</li>
	<li>Mus&eacute;es CH-AT-DE</li>
	<li>Mus&eacute;es CH-DE-AT-IT-FR</li>
	<li>Gares suisses</li>
	<li>Ch&acirc;teaux suisses</li>
	<li>Thermes romains</li>
	<li>Biblioth&egrave;ques CH-LI-DE-AT</li>
</ul>

<p>&nbsp;</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:</strong> WMCH Map Service contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes: 2 &nbsp;Comp&eacute;tence multilinguisme; 6 Comp&eacute;tences citoyennes; 7 Comp&eacute;tences entrepreneuriales; 8 Comp&eacute;tence relative &agrave; la sensibilit&eacute; et &agrave; l&rsquo;expression culturelles.</p>',2,2,13,false,true),
	 ('Wikimedia Germany','https://www.wikimedia.de/2019/en/themen/wikidata/','Wikidata','A central storage for open structured data','Wikidata','Un archivio centrale per dati strutturati aperti','Wikidata','Ein zentraler Speicher für offen strukturierte Daten','Wikidata','Un stockage central pour les données structurées libres','https://www.wikidata.org',NULL,NULL,'',NULL,'https://www.youtube.com/embed/lmWmMIuCJVM','Structured Data on Commons and Wikidata: We''re making 50 million audiovisual pieces accessible in all languages, Wikimedia Foundation','Wikidata is a database edited collaboratively which includes topics, concepts, or objects. Each item is identified by a unique number, prefixed with the letter Q, known as a "QID".  Wikidata contents are available under a public domain license, exportable using standard formats and can be interlinked to other open datasets. Wikidata serves as central storage for structured data from its sister Wikimedia projects, including Wikipedia, Wikivoyage, Wiktionary, Wikisource and others.','<p><strong>Educational and professional opportunities: </strong>Wikidatahelps improve european key competence such as: 1 Literacy competence: 2 Multilingual competence; 3 Mathematical competence and competence in science, technology, engineering; 4 Digital competence; 7 Entrepreneurship competence.</p>','Wikidata è un database creato in modo collaborativo che include argomenti, concetti o oggetti. Ogni articolo è identificato da un numero univoco, preceduto dalla lettera Q, noto come "QID". I contenuti di Wikidata sono disponibili con una licenza di dominio pubblico, esportabile utilizzando formati standard e possono essere collegati ad altri set di dati aperti. Wikidata funziona da archivio centrale per i dati dei progetti Wikimedia, tra cui Wikipedia, Wikivoyage, Wiktionary, Wikisource e altri.','<p><strong>Opportunit&agrave; educative e professionali:</strong> Wikidata contribuisce ad acquisire competenze chiave europee per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 2 Competenza multilinguistica; 3 Competenza matematica e competenza in scienze, tecnologie e ingegneria; 4 Competenza digitale; 7 Competenza imprenditoriale.</p>','Wikidata ist eine gemeinsam gepflegte Datenbank, die Begriffe, Konzepte und Informationen enthält. Jedes Objekt wird durch eine eindeutige Nummer, die «QID», gekennzeichnet. Die Inhalte von Wikidata unterliegen einer Public-Domain-Lizenz.  Sie können in Standardformaten exportiert und mit anderen offenen Datensätzen verknüpft werden. Wikidata dient als zentrale Ablage für strukturierte Daten von Schwesterprojekten, darunter Wikipedia, Wikivoyage, Wiktionary und Wikisource.','<p><strong>M&ouml;glichkeiten f&uuml;r Bildung&nbsp;und Beruf: </strong>Wikidata hilft zur Verbesserung der EU-Schl&uuml;sselkompetenzen wie: &nbsp;1 Lese- und Schreibkompetenz; 2 Mehrsprachenkompetenz; 3 Mathematische Kompetenz und Kompetenz in Naturwissenschaften, Informatik und Technik; 4 Digitale Kompetenz; 7&nbsp;Unternehmerische Kompetenz.</p>','Wikidata est une base de données structurées dont les entrées correspondent à des personnes, des concepts, ou des objets. Chaque entrée a un identifiant unique, préfixé de la lettre Q, appelé "QID". Le contenu de Wikidata est disponible sous une licence gratuite, exportable sous des formats standard. Wikidata stocke les données structurées des projets Wikimedia, dont Wikipédia, Wikivoyage, ou Wiktionary.','<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles: </strong>Wikidata contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes: 1 Comp&eacute;tence lecture et &eacute;criture, 2 &nbsp;Comp&eacute;tence multilinguisme, &nbsp;3 Comp&eacute;tence math&eacute;matique et comp&eacute;tences en sciences, en technologies et en ing&eacute;nierie, 4 Comp&eacute;tence num&eacute;rique, &nbsp;7 Comp&eacute;tences entrepreneuriales.</p>',2,2,4,false,true),
	 ('Wikimedia Community','https://wikimediafoundation.org/','Wikibooks','98 languages - 270.000 pages','Wikibooks','98 lingue - 270.000 pagine','Wikibooks','98 Sprachen – über 270 000 Seiten','Wikibooks','98 langues - 270.000 pages','https://www.wikibooks.org/',NULL,NULL,'Screen_Shot_2020-11-25_at_12.04.05.png','Agricola De re metallica - Wikibooks',NULL,NULL,'Wikibooks is for textbooks, annotated texts, instructional guides, and manuals. These materials can be used in a traditional classroom, an accredited institution, a home-school environment, as part of a Wikiversity course, or for self-learning. Every book is generated, edited, proofed, and read by all the thousands of volunteers contributors, fans, and scholars.','<p><strong>Educational and professional opportunities: </strong>Wikibooks &nbsp;helps improve european key competence such as: 1 Literacy competence: 2 Multilingual competence; 3 Mathematical competence and competence in science, technology, engineering; 4 Digital competence.</p>','Wikibooks comprende libri di testo, guide didattiche e manuali. Questi materiali possono essere utilizzati in un''aula tradizionale, in un istituto accreditato, in un ambiente scolastico familiare, nell''ambito di un corso di Wikiversity o per l''autoapprendimento. Ogni libro è generato, pubblicato, messo a punto e letto da migliaia di volontari, collaboratori e studiosi.','<p><strong>Opportunit&agrave; educative e professionali:</strong> Wikibooks contribuisce ad acquisire competenze chiave europee per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 2 Competenza multilinguistica; 3 Competenza matematica e competenza in scienze, tecnologie e ingegneria; 4 Competenza digitale.</p>','Wikibooks umfasst Lehr-, Fach- und Handbücher. Die Unterlagen können im herkömmlichen Klassenzimmer, bei der Heimschulung, im Rahmen von Wikiversity-Kursen oder zum Selbststudium verwendet werden. Die Bücher werden von Tausenden von ehrenamtlichen Helfern, Fans und Wissenschaftlerinnen erstellt, geprüft, verbessert und gelesen.','<p><strong>M&ouml;glichkeiten f&uuml;r Bildung und Beruf: </strong>Wikibooks unterst&uuml;tzt bei der Verbesserung der EU-Schl&uuml;sselkompetenzen wie: &nbsp;1 Lese- und Schreibkompetenz; 2 Mehrsprachenkompetenz; 3 Mathematische Kompetenz und Kompetenz in Naturwissenschaften, Informatik und Technik; 4 Digitale Kompetenz.</p>','Wikibooks est consacré aux livres du domaine public : textes, manuels, guides pédagogiques, notamment. Ils peuvent être utilisés dans une salle de classe traditionnelle, une institution accréditée, un environnement maison-école, un cours Wikiversité, ou pour l’auto-apprentissage.
Chaque livre est généré, édité, corrigé, puis lu par des contributeurs bénévoles d’une communauté qui compte des milliers de personnes.','<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles: </strong>Wikibooks &nbsp;contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes: 1 Comp&eacute;tence lecture et &eacute;criture, 2 &nbsp;Comp&eacute;tence multilinguisme, &nbsp;3 Comp&eacute;tence math&eacute;matique et comp&eacute;tences en sciences, en technologies et en ing&eacute;nierie, 4 Comp&eacute;tence num&eacute;rique.</p>',2,2,16,false,true);
INSERT INTO public.sito_project ("by",by_url,title_en,subtitle_en,title_it,subtitle_it,title_de,subtitle_de,title_fr,subtitle_fr,link,date_from,date_to,project_image,image_credits,project_video,video_credits,short_description_en,more_information_en,short_description_it,more_information_it,short_description_de,more_information_de,short_description_fr,more_information_fr,content_type_id,licence_id,my_order,image_in_home,published) VALUES
	 ('Wikimedia Community','https://wikimediafoundation.org/','Wiki Loves Monuments','Cultural heritage monuments photographic competition','Wiki Loves Monuments','Concorso fotografico sul patrimonio culturale','Wiki Loves Monuments','Fotowettbewerb zu Kulturdenkmälern','Wiki Loves Monuments','Le concours international de photos scientifiques','https://www.wikilovesmonuments.org/',NULL,NULL,'wikilovesmonumnets.png','www.wikilovesmonuments.org',NULL,NULL,'Wiki Loves Monuments is organised worldwide by Wikipedia community members with the help of national Wikimedia affiliates across the globe. The aim of the contest is to ask the general public - readers and users of Wikipedia, photographers, hobbyists - to take pictures of cultural heritage monuments and upload them to Wikimedia Commons for use on Wikipedia and other Wikimedia projects.','<p><strong>Educational and professional opportunities:</strong> Wiki Loves Monuments helps improve european key competence such as: 1 Literacy competence: 4 Digital competence; 6 Citizenship competence;&nbsp;<br />
8 Cultural awareness and expression competence.<br />
&nbsp;</p>','Wiki Loves Monuments è un concorso fotografico internazionale annuale organizzato in tutto il mondo dai membri della community di Wikipedia con l''aiuto dei capitoli nazionali di Wikimedia. Lo scopo del concorso è di chiedere al grande pubblico - lettori e utenti di Wikipedia, fotografi, hobbisti - di scattare foto di monumenti del patrimonio culturale e caricarli su Wikimedia Commons.','<p><strong>Opportunit&agrave; educative e professionali: </strong>Wiki Loves Monuments contribuisce ad acquisire competenze chiave europee per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 4 Competenza digitale; 6 Competenza di cittadinanza; 8 Competenza in materia di consapevolezza ed espressione culturale.</p>','Wiki Loves Monuments ist ein internationaler Fotowettbewerb, der jährlich von Mitgliedern der Wikipedia-Community in den nationalen Organisationen weltweit organisiert wird. Der Wettbewerb soll die breite Öffentlichkeit – Leserinnen und Nutzer von Wikipedia, Hobby- und Berufsfotografinnen – dazu ermutigen, Fotos von Kulturdenkmälern zu machen und in Wikimedia Commons.','<p><strong>M&ouml;glichkeiten f&uuml;r Bildung und Beruf: </strong>Wiki Loves Monuments unterst&uuml;tzt bei der Verbesserung der EU-Schl&uuml;sselkompetenzen wie: &nbsp;1 Lese- und Schreibkompetenz; &nbsp;4 Digitale Kompetenz; &nbsp;6 B&uuml;rgerkompetenz; 7. Unternehmerische Kompetenz.</p>','L''objectif du concours est d''impliquer le grand public - lecteurs et utilisateurs de Wikipédia, photographes, amateurs - pour faire des photos de monuments du patrimoine culturel et les téléverser sur Wikimedia Commons pour pouvoir illustrer les articles Wikipédia et les autres projets Wikimedia. Wiki Loves Monuments est organisé dans le monde entier par les membres de la communauté Wikimedia avec l''aide des affiliés nationaux de Wikimedia.','<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:</strong> Wiki Loves Monuments contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes: 1 Comp&eacute;tence lecture et &eacute;criture; 4 Comp&eacute;tence num&eacute;rique; 6 Comp&eacute;tences citoyennes; 8 Comp&eacute;tence relative &agrave; la sensibilit&eacute; et &agrave; l&rsquo;expression culturelles.</p>',2,2,18,true,true),
	 ('Wikimedia Community','https://wikimediafoundation.org/','Wikipedia','278 languages - 49.000.000 articles','Wikipedia','278 lingue - 49.000.000 articoli','Wikipedia','278 Sprachen – über 50’000’000 Artikel','Wikipedia','278 langues  - 49.000.000 articles','https://en.wikipedia.org',NULL,NULL,'1250px-Wikipedia_logo_svg.svg.png','Wikipedia logo',NULL,NULL,'The free encyclopedia that anyone can edit. Wikipedia is created and maintained as an open collaboration project by a community of volunteer editors, using a wiki-based editing system.  It is the largest and most popular general reference work on the World Wide Web, and is one of the 20 most popular websites in the world.','<p>It features exclusively free content and no commercial ads and is owned and supported by the Wikimedia Foundation, funded primarily through donations.</p>

<p><strong>Educational and professional opportunities: </strong>Wikipedia helps improve european key competence such as: 1 Literacy competence: 2 Multilingual competence; 3 Mathematical competence and competence in science, technology, engineering; 4 Digital competence; 5 Personal, social and learning to learn competence; 6 Citizenship competence; 7 Entrepreneurship competence; 8 Cultural awareness and expression competence.<br />
&nbsp;</p>','L''enciclopedia libera che chiunque può modificare. Wikipedia viene creata e gestita in modo collaborativo da una comunità di redattori volontari, utilizzando un sistema di editing basato su wiki. È il progetto più grande e il più apprezzato del World Wide Web ed è uno dei 20 siti più conosciuti al mondo.','<p>Propone contenuti gratuiti, senza pubblicit&agrave; commerciale ed &egrave; supportato dalla Wikimedia Foundation, principalmente attraverso donazioni.</p>

<p><br />
<strong>Opportunit&agrave; educative e professionali: </strong>Wikipedia &nbsp;contribuisce ad acquisire competenze chiave europee per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 2 Competenza multilinguistica; 3 Competenza matematica e competenza in scienze, tecnologie e ingegneria; 4 Competenza digitale; 5 Competenza personale, sociale e capacit&agrave; di imparare ad imparare; 6 Competenza di cittadinanza; 7 Competenza imprenditoriale; 8 Competenza in materia di consapevolezza ed espressione culturale.</p>','Die freie Enzyklopädie, die alle editieren können. Wikipedia ist ein offenes Zusammenarbeitsprojekt in einer Community von freiwilligen Autorinnen und Autoren mittels eines Wiki-Systems. Das grösste und meistgenutzte Nachschlagewerk auf dem World Wide Web zählt zu den 20 beliebtesten Websites der Welt.','<p>Ausschliesslich kostenlose Inhalte ohne kommerzielle Werbung, betrieben durch die Wikimedia Foundation, gr&ouml;sstenteils durch Spenden finanziert.</p>

<p><strong>M&ouml;glichkeiten f&uuml;r Bildung&nbsp;und Beruf: </strong>Wikipedia unterst&uuml;tzt bei der Verbesserung der EU-Schl&uuml;sselkompetenzen wie: &nbsp;1 Lese- und Schreibkompetenz; 2 Mehrsprachenkompetenz; 3 Mathematische Kompetenz und Kompetenz in Naturwissenschaften, Informatik und Technik; 4 Digitale Kompetenz; 5 Pers&ouml;nliche, soziale und Lernkompetenz; 6 B&uuml;rgerkompetenz; 7. Unternehmerische Kompetenz; 8 Kulturbewusstsein und kulturelle Ausdrucksf&auml;higkeit.</p>','L''encyclopédie gratuite que tout le monde peut éditer. Wikipédia est un projet collaboratif ouvert, créé et maintenu par une communauté d''éditeurs en majorité bénévoles, à l''aide d''un système d''édition basé sur du wiki. Il s''agit du projet le plus important et le plus connu de la Fondation Wikimedia, et c’est l''un des 20 sites Web les plus populaires au monde.','<p>Wikipedia propose exclusivement du contenu gratuit sans publicit&eacute; commerciale car il est financ&eacute; principalement par des donations.</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles: </strong>Wikipedia contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes: 1 Comp&eacute;tence lecture et &eacute;criture, 2 &nbsp;Comp&eacute;tence multilinguisme, &nbsp;3 Comp&eacute;tence math&eacute;matique et comp&eacute;tences en sciences, en technologies et en ing&eacute;nierie, 4 Comp&eacute;tence num&eacute;rique, 5 Comp&eacute;tences personnelles et sociales et capacit&eacute; d&rsquo;apprendre &agrave; apprendre; 6 Comp&eacute;tences citoyennes; 7 Comp&eacute;tences entrepreneuriales; 8 Comp&eacute;tence relative &agrave; la sensibilit&eacute; et &agrave; l&rsquo;expression culturelles.</p>',2,2,2,true,true),
	 ('Wikimedia Community','https://wikimediafoundation.org/','Commons','A free to access multimedia resources archive','Commons','Un archivio di 60.000.000 di risorse multimediali ad accesso gratuito','Commons','Ein kostenlos zugängliches Archiv von Multimedia-Ressourcen','Commons','Une archive de 60.000.000 ressources multimédias gratuites','https://commons.wikimedia.org',NULL,NULL,'1433px-Mejsene_fodres-4.jpg','Villy Fink Isaksen CC BY-SA 4.0',NULL,NULL,'Wikimedia Commons, or simply Commons, is an online archive of free-to-access and use digital images, sounds and other multimedia files. It is one of the largest archives of multimedia resources for educational and documentary purposes that can be freely used to make presentations, reports, documents and other creations. The files in this archive can be used directly by all other Wikimedia projects.','<p>Files from Wikimedia Commons can be used across all Wikimedia projects in all languages, including Wikipedia, Wiktionary, Wikibooks, Wikivoyage, Wikispecies, Wikisource, and Wikinews, or downloaded for offsite use. As of May 2020, the repository contains over 61 million free media files, managed and editable by registered volunteers.</p>

<p>The project was proposed by Erik M&ouml;ller in March 2004 and launched on September 7, 2004. A key motivation behind the setup of a central repository was the desire to reduce duplication of effort across the Wikimedia projects and languages, as the same file had to be uploaded to many different wikis separately before Commons was created.</p>

<p>The aim of Wikimedia Commons is to provide a media file repository &quot;that makes available public domain and freely-licensed educational media content to all, and that acts as a common repository for the various projects of the Wikimedia Foundation.&quot; The expression &quot;educational&quot; is to be understood according to its broad meaning of &quot;providing knowledge; instructional or informative&quot;.</p>

<p>Source: <a href="https://en.wikipedia.org/wiki/Wikimedia_Commons">https://en.wikipedia.org/wiki/Wikimedia_Commons</a></p>

<p><strong>Educational and professional opportunities: </strong>Commons helps improve <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">european key competence</a> such as: 4 Digital competence; 5 Personal, social and learning to learn competence; 6 Citizenship competence; 7 Entrepreneurship competence; 8 Cultural awareness and expression competence.</p>

<p>Read more details about <strong><a href="/pedagogical-opportunities">pedagogical opportunities of open education</a>.&nbsp;</strong></p>

<p>&nbsp;</p>','Wikimedia Commons, chiamato anche Commons, è un archivio di immagini digitali, suoni ed altri file multimediali con licenza libera di utilizzo.  È uno dei maggiori archivi di risorse multimediali a scopo didattico e documentale liberamente utilizzabili per realizzare presentazioni, report, documenti e altre elaborazioni. I contenuti di questo archivio possono essere usati direttamente da tutti gli altri progetti Wikimedia.','<p>I file inviati a questo archivio possono essere usati direttamente da tutti gli altri progetti che si trovano sui server Wikimedia, inclusi Wikipedia, Wikibooks, Wikinotizie, Wikispecies, come se fossero caricati localmente su ogni singolo progetto (in alcuni casi &egrave; per&ograve; possibile che l&#39;uso di certe immagini sia vietato in specifici progetti a causa di problematiche legislative dovute a leggi locali).</p>

<p>Il progetto nacque il 7 settembre 2004 con lo scopo di costituire un archivio centralizzato per le immagini e le altre risorse multimediali dei progetti Wikimedia (in precedenza ogni progetto Wikimedia e ogni edizione di Wikipedia richiedeva di caricare i file multimediali nel proprio database).</p>

<p>Il sito ha accumulato un&#39;ampia collezione: raccoglie oltre 10.000 riproduzioni di dipinti di pubblico dominio dai tempi antichi ai moderni, oltre 7.000 file di pronuncia in varie lingue, centinaia di registrazioni di pubblico dominio di musica classica e una collezione in crescita di filmati di discorsi storici.</p>

<p>Fonte: <a href="https://it.wikipedia.org/wiki/Wikimedia_Commons">https://it.wikipedia.org/wiki/Wikimedia_Commons</a></p>

<p><strong>Opportunit&agrave; educative e professionali:</strong> Commons contribuisce ad acquisire <a href="https://eur-lex.europa.eu/legal-content/IT/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">competenze chiave europee</a> per l&rsquo;apprendimento permanente, in particolare: 4 Competenza digitale; 5 Competenza personale, sociale e capacit&agrave; di imparare ad imparare; 6 Competenza di cittadinanza; 7 Competenza imprenditoriale; 8 Competenza in materia di consapevolezza ed espressione culturale.</p>

<p>&nbsp;</p>','Wikimedia Commons, kurz Commons, ist eine Online-Sammlung von frei zugänglichen und benutzbaren Bild-, Audio- und anderen Mediendateien. Commons ist eines der grössten Archive von Multimedia-Materialien für Bildungs- und Dokumentationszwecke und kann kostenlos genutzt werden, um Präsentationen, Berichte usw. zu erstellen. Die Dateien in diesem Archiv können direkt in allen andern Wikimedia-Projekten verwendet werden.','<p>Dateien aus Wikimedia Commons k&ouml;nnen in s&auml;mtlichen Wikimedia-Projekten &ndash; einschliesslich Wikipedia, Wiktionary, Wikibooks, Wikivoyage, Wikispecies, Wikisource und Wikinews &ndash; in allen Sprachen verwendet, aber auch zur Offline-Nutzung heruntergeladen werden. Stand Dezember 2020 enthielt Wikimedia Commons mehr als 66 Millionen freie Mediendateien, die von registrierten Freiwilligen verwaltet und bearbeitet wurden.</p>

<p>Das Projekt wurde im M&auml;rz 2004 von Erik M&ouml;ller angeregt und ging am 7. September 2004 live. Hauptmotivation f&uuml;r die Einrichtung eines zentralen Datendepots war der Wunsch, Doppelspurigkeiten zwischen den verschiedenen Wikimedia-Projekten und Sprachen zu verringern, da vor der Schaffung von Commons dieselbe Datei separat in viele verschiedene Wikis hochgeladen werden musste.</p>

<p>Ziel von Wikimedia Commons ist es, ein Repository f&uuml;r Mediendateien zur Verf&uuml;gung zu stellen, &laquo;das gemeinfreie (Public Domain) oder unter eine Freie Lizenz gestellte, edukative Medieninhalte f&uuml;r alle verf&uuml;gbar macht&raquo;. Der Ausdruck &laquo;edukativ&raquo; ist dabei weit gefasst in der Bedeutung von &laquo;Wissen bereitstellend, lehrreich oder informativ&raquo; zu verstehen.</p>

<p>Quelle: <a href="https://de.wikipedia.org/wiki/Wikimedia_Commons" target="_blank">https://de.wikipedia.org/wiki/Wikimedia_Commons</a></p>

<p><strong>M&ouml;glichkeiten f&uuml;r Bildung und Beruf:</strong> Commons tr&auml;gt zur Verbesserung der <a href="https://eur-lex.europa.eu/legal-content/DE/TXT/PDF/?uri=CELEX:32018H0604(01)" target="_blank">EU-Schl&uuml;sselkompetenzen</a> bei, insbesondere zur&nbsp;4 Digitalen Kompetenz, 5 Pers&ouml;nlichen, sozialen und Lernkompetenz, 6 B&uuml;rgerkompetenz, 7 Unternehmerischen Kompetenz, 8 Kulturbewusstsein und kulturellen Ausdrucksf&auml;higkeit.</p>

<p>Erfahren Sie mehr &uuml;ber die <a href="/pedagogical-opportunities" target="_self">p&auml;dagogischen M&ouml;glichkeiten der offenen Bildung</a>.&nbsp;</p>','Wikimedia Commons, ou simplement Commons, est une médiathèque numérique, contenant des images, des enregistrements son et d''autres contenus multimédia. Il s''agit de l''une des plus grandes archives de ressources multimédia à des fins éducatives et documentaires pouvant être librement utilisées pour la réalisation de présentations, rapports, et autres documents. Les fichiers de cette archive peuvent être intégrés directement à tous les autres projets Wikimedia.','<p>Une base de donn&eacute;es multim&eacute;dia centralise des m&eacute;dias libres, tels que photographies, dessins, sch&eacute;mas, partitions, cartes g&eacute;ographiques, textes &eacute;crits et parl&eacute;s, animations et vid&eacute;os, objets 3D qui ont une utilit&eacute; pour au moins un des projets de Wikimedia.</p>

<p>Le projet fut propos&eacute; par Erik M&ouml;ller en mars 20043 et fut lanc&eacute; le 7 septembre de la m&ecirc;me ann&eacute;e. La principale motivation pour un d&eacute;p&ocirc;t centralis&eacute; &eacute;tait de r&eacute;duire la dispersion d&#39;efforts entre les projets Wikimedia des diff&eacute;rentes langues car un m&ecirc;me fichier devait &ecirc;tre import&eacute; unitairement sur chacun des wiki souhaitant l&#39;utiliser.</p>

<p>Pour &ecirc;tre accept&eacute; dans Wikimedia Commons, un m&eacute;dia doit pouvoir &ecirc;tre redistribu&eacute; et publi&eacute;, y compris commercialement et s&#39;il est modifi&eacute;. Seules certaines contraintes sont permises, comme l&#39;obligation de citer l&#39;auteur originel ou de redistribuer une cr&eacute;ation d&eacute;riv&eacute;e sous la m&ecirc;me licence.</p>

<p>Les formats accept&eacute;s sont : PNG, GIF, JPEG, XCF, PDF, MIDI, Ogg, SVG et DjVu. La taille maximale d&#39;un fichier est de 100 Mo. N&eacute;anmoins, tous les m&eacute;dias &laquo; libres &raquo; ne sont pas accept&eacute;s : ils doivent poss&eacute;der un int&eacute;r&ecirc;t encyclop&eacute;dique, &eacute;ducatif, ou potentiellement servir au sein d&#39;un des projets de Wikimedia.</p>

<p>Source: <a href="https://fr.wikipedia.org/wiki/Wikimedia_Commons">https://fr.wikipedia.org/wiki/Wikimedia_Commons</a></p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles: </strong>Commons &nbsp;contribue &agrave; am&eacute;liorer les <a href="https://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32018H0604(01)&amp;from=EN">comp&eacute;tences cl&eacute;s europ&eacute;ennes</a>: 4 Comp&eacute;tence num&eacute;rique, 5 Comp&eacute;tences personnelles et sociales et capacit&eacute; d&rsquo;apprendre &agrave; apprendre; 6 Comp&eacute;tences citoyennes; 7 Comp&eacute;tences entrepreneuriales; 8 Comp&eacute;tence relative &agrave; la sensibilit&eacute; et &agrave; l&rsquo;expression culturelles.</p>',2,2,1,false,true),
	 ('Unesco','https://en.unesco.org/','UNESCO OER Recommendation 2019','The relevance of Open Educational Resources','Raccomandazione OER dell''UNESCO 2019','La rilevanza delle risorse educative aperte','UNESCO-Empfehlung zu OER 2019','Die Bedeutung offener Bildungsressourcen','Recommandation de l''UNESCO REL 2019','L''importance des ressources éducatives ouvertes','http://portal.unesco.org/en/ev.php-URL_ID=49556&URL_DO=DO_TOPIC&URL_SECTION=201.html',NULL,NULL,'OER-Recommendation-3-768x559.jpg','Photo by Ryan Merkley CC BY 4.0',NULL,NULL,'On 25th of November 2019, the 40th General Conference of UNESCO adopted the UNESCO OER Recommendation. In this important Recommendation Unesco underlines that in the realization of Inclusive Knowledge Societies, Open Educational Resources (OER) support quality education that is equitable, inclusive, open and participatory.','<p>The OER definition of the UNESCO OER Recommendation says:</p>

<p>&ldquo;Open Educational Resources (OER) are learning, teaching and research materials in any format and medium that reside in the public domain or are under copyright that have been released under an open license, that permit no-cost access, re-use, re-purpose, adaptation and redistribution by others.&rdquo;</p>

<p>And open license is defined as:</p>

<p>&ldquo;Open license refers to a license that respects the intellectual property rights of the copyright owner and provides permissions granting the public the rights to access, re-use, re-purpose, adapt and redistribute educational materials.&rdquo;</p>

<p>And connect Open education to SDG 4:&nbsp;</p>

<p>Connecting education: &ldquo;to the&nbsp;&nbsp;achievement of Sustainable Development Goal 4 (SDG 4), which calls for the international community to ensure inclusive and equitable quality education and promote lifelong learning opportunities for all&rdquo;. Further referring to the Education 2030 Framework for Action that lists a set of strategic approaches for the implementation of SDG 4, and which underlines that increasing access must be accompanied by measures that improve the quality and relevance of education and learning, and in particular that &ldquo;education institutions and programmes should be adequately and equitably resourced with safe, environment-friendly and easily accessible facilities; sufficient numbers of teachers and educators of quality using learner-centred, active and collaborative pedagogical approaches; and books, other learning materials, open educational resources and technology that are non-discriminatory, learning conducive, learner friendly, context specific, cost effective and available to all learners &ndash; children, youth and adults&rdquo; [...]</p>

<p><strong><a href="https://unesdoc.unesco.org/ark:/48223/pf0000373755/PDF/373755eng.pdf.multi.page=3">Download Pdf version</a></strong></p>

<p>&nbsp;</p>','Il 25 novembre 2019, la 40a Conferenza generale dell''UNESCO ha adottato la Raccomandazione OER dell''UNESCO. In questa importante Raccomandazione l''Unesco sottolinea che nella realizzazione di Società della conoscenza inclusive, le risorse educative aperte (OER) sostengono un''istruzione di qualità che sia equa, inclusiva, aperta e partecipativa.','<p>La definizione di OER della Raccomandazione OER dell&#39;UNESCO dice:</p>

<p>&quot;Le risorse educative aperte (OER) sono materiali di apprendimento, insegnamento e ricerca in qualsiasi formato e mezzo che sono nel pubblico dominio o sono protetti da copyright e che sono stati rilasciati con una licenza aperta che consente l&#39;accesso, il riutilizzo, il riutilizzo senza costi, adattamento e ridistribuzione da parte di altri &quot;.</p>

<p><br />
E la licenza aperta &egrave; definita come:</p>

<p>&quot;La licenza aperta si riferisce a una licenza che rispetta i diritti di propriet&agrave; intellettuale del titolare del copyright e fornisce autorizzazioni che concedono al pubblico i diritti di accesso, riutilizzo, riutilizzo, adattare e ridistribuire i materiali didattici.&quot;</p>

<p>E collega l&#39;istruzione aperta alla SDG 4:</p>

<p>Collegando l&#39;istruzione: &quot;al raggiungimento dell&#39;obiettivo di sviluppo sostenibile 4 (SDG 4), che richiede alla comunit&agrave; internazionale di garantire un&#39;istruzione di qualit&agrave; inclusiva ed equa e promuovere opportunit&agrave; di apprendimento permanente per tutti&quot;. Facendo inoltre riferimento al Framework for Action 2030 per l&#39;istruzione che elenca una serie di approcci strategici per l&#39;attuazione dell&#39;SDG 4 e che sottolinea che un maggiore accesso deve essere accompagnato da misure che migliorino la qualit&agrave; e la pertinenza dell&#39;istruzione e dell&#39;apprendimento, e in particolare che &quot;gli istituti e i programmi di istruzione dovrebbero disporre di risorse adeguate ed equi con strutture sicure, rispettose dell&#39;ambiente e facilmente accessibili; un numero sufficiente di insegnanti ed educatori di qualit&agrave; che utilizzano approcci pedagogici incentrati sul discente, attivi e collaborativi; e libri, altri materiali di apprendimento, risorse educative aperte e tecnologia che non siano discriminatorie, che favoriscano l&#39;apprendimento, amichevoli, contestuali, convenienti e disponibili per tutti gli studenti: bambini, giovani e adulti&quot;</p>

<p><strong><a href="http://portal.unesco.org/en/ev.php-URL_ID=49556&amp;URL_DO=DO_TOPIC&amp;URL_SECTION=201.html">Documento pdf completo in inglese</a></strong></p>

<p>&nbsp;</p>','Am 25. November 2019 verabschiedete die 40. Generalkonferenz der UNESCO die OER-Empfehlung. In dieser wichtigen Empfehlung unterstreicht die UNESCO die Rolle von offenen Bildungsressourcen (Open Educational Resources, OER) bei der Verwirklichung von integrativen Wissensgesellschaften durch eine qualitativ hochwertige Bildung, die gerecht, integrativ, offen und partizipativ ist.','<p><span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">In der UNESCO-Empfehlung werden OER wie folgt definiert:</span></span><br />
<span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">&laquo;Open Educational Resources (OER) sind Lern-, Lehr- und Forschungsmaterialien, in jedem Format und Medium, die gemeinfrei sind oder urheberrechtlich gesch&uuml;tzt und unter einer offenen Lizenz ver&ouml;ffentlicht sind, wodurch kostenloser Zugang, Weiterverwendung, Nutzung zu beliebigen Zwecken, Bearbeitung und Weiterverbreitung durch Andere erlaubt wird.&raquo;</span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">Die offene Lizenz wird definiert als:</span></span><br />
<span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">&laquo;Eine offene Lizenz respektiert die geistigen Eigentumsrechte des Inhabers der Urheberrechte und gew&auml;hrt der &Ouml;ffentlichkeit das Recht auf Zugang, Weiterverwendung, Nutzung zu beliebigen Zwecken, Bearbeitung und Weiterverbreitung von Bildungsmaterialien.&raquo;</span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">OER stehen in Beziehung zum Globalen Nachhaltigkeitsziel 4 (Sustainable Development Goal 4):</span></span><br />
<span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">Die OER-Empfehlung nimmt Bezug auf die &laquo;Umsetzung des Globalen Nachhaltigkeitsziels 4 (SDG 4), welches die internationale Gemeinschaft auffordert, f&uuml;r alle Menschen inklusive, chancengerechte und hochwertige Bildung sowie M&ouml;glichkeiten zum lebenslangen Lernen sicherzustellen.&raquo;</span></span><br />
<span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">Sie weist ausserdem auf den Aktionsrahmen &laquo;Bildung 2030&raquo; hin, der eine Reihe von strategischen Ans&auml;tzen f&uuml;r die Umsetzung des SDG 4 auflistet und betont, dass die Verbreiterung des Zugangs durch Massnahmen begleitet werden muss, welche die Qualit&auml;t und Relevanz von Bildung und Lernen verbessern, und dass insbesondere &laquo;Bildungseinrichtungen und -programme [&hellip;] ad&auml;quat und gerecht ausgestattet sein [sollten] mit sicheren, umweltfreundlichen und leicht zug&auml;nglichen Einrichtungen; mit einer ausreichenden Zahl an guten Lehrkr&auml;ften und P&auml;dagogen, die lerner-zentrierte, aktive und kollaborative p&auml;dagogische Ans&auml;tze anwenden; und mit B&uuml;chern, anderen Lernmaterialien, Open Educational Resources (OER) und Technologie, die nicht-diskriminierend, lernf&ouml;rdernd, lerner-freundlich, kontextspezifisch, kosteneffektiv und allen Lernenden zug&auml;nglich sind &ndash; Kindern, Jugendlichen und Erwachsenen.</span></span><span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">&raquo;</span></span></p>

<p><a href="https://www.unesco.de/sites/default/files/2020-05/2019_Empfehlung%20Open%20Educational%20Resources.pdf" target="_blank"><span style="font-size:11pt"><span style="font-family:Verdana,sans-serif">PDF-Version herunterladen</span></span></a></p>

<p>&nbsp;</p>

<p>&nbsp;</p>','Le 25 novembre 2019, la 40e Conférence générale de l''UNESCO a adopté la recommandation de l''UNESCO sur les REL. Dans cette importante recommandation, l''Unesco souligne que dans la réalisation de sociétés du savoir inclusives, les ressources éducatives libres (REL) soutiennent une éducation de qualité qui est équitable, inclusive, ouverte et participative.','<p><br />
La d&eacute;finition des REL de la Recommandation sur les REL de l&#39;UNESCO dit:</p>

<p>&laquo;Les ressources &eacute;ducatives libres (REL) sont des mat&eacute;riels d&#39;apprentissage, d&#39;enseignement et de recherche dans tous les formats et supports qui r&eacute;sident dans le domaine public ou sont sous copyright qui ont &eacute;t&eacute; publi&eacute;s sous une licence ouverte, qui permettent acc&egrave;s gratuit, r&eacute;utilisation, adaptation et redistribution&raquo;</p>

<p>Et la licence ouverte est d&eacute;finie comme:</p>

<p>&laquo;La licence ouverte fait r&eacute;f&eacute;rence &agrave; une licence qui respecte les droits de propri&eacute;t&eacute; intellectuelle du titulaire du droit d&#39;auteur et fournit des autorisations accordant au public le droit d&#39;acc&eacute;der, de r&eacute;utiliser, d&#39;adapter et de distribuer mat&eacute;riel &eacute;ducatif.&raquo;</p>

<p>L&#39;&eacute;ducation ouverte et l&#39;ODD 4:</p>

<p>Connecter l&#39;&eacute;ducation: &laquo;&agrave; la r&eacute;alisation de l&#39;Objectif de d&eacute;veloppement durable 4 (ODD 4), qui appelle la communaut&eacute; internationale &agrave; assurer une &eacute;ducation de qualit&eacute; inclusive et &eacute;quitable et &agrave; promouvoir les opportunit&eacute;s d&#39;apprentissage tout au long de la vie pour tous&raquo;. Se r&eacute;f&eacute;rant en outre au Cadre d&#39;action &Eacute;ducation 2030 qui &eacute;num&egrave;re un ensemble d&#39;approches strat&eacute;giques pour la mise en &oelig;uvre de l&#39;ODD 4, et qui souligne que l&#39;am&eacute;lioration de l&#39;acc&egrave;s doit s&#39;accompagner de mesures qui am&eacute;liorent la qualit&eacute; et la pertinence de l&#39;&eacute;ducation et de l&#39;apprentissage, et en particulier que &laquo;les &eacute;tablissements et programmes &eacute;ducatifs devraient &ecirc;tre dot&eacute;s de ressources ad&eacute;quates et &eacute;quitables&raquo;.</p>

<p><strong><a href="https://unesdoc.unesco.org/ark:/48223/pf0000373755/PDF/373755eng.pdf.multi.page=11">Le document complet</a></strong></p>

<p>&nbsp;</p>',3,3,3,true,true),
	 ('Wiki Education','https://wikiedu.org/','Evaluation Dashboard','A tool to simply evaluate editing activities on Wikimedia projects','Dashboard di valutazione','Uno strumento per valutare le attività di editing sui progetti Wikimedia','Evaluation Dashboard','Übersicht über die Editierungsaktivitäten in Wikimedia-Projekten','Evaluation Dashboard','Un outil pour évaluer les activités d''édition sur le projets Wikimedia','https://outreachdashboard.wmflabs.org/',NULL,NULL,'','https://outreachdashboard.wmflabs.org',NULL,NULL,'Easily online tool to manage editing activity on Wikimedia. The basic purpose of the dashboard is to provide a way to organize groups of editors who are working on a common project, and to make it easy to keep track of what they are doing and how they are contributing.','','Tieni traccia e gestisci facilmente l''attività di editing su Wikimedia da un’unica piattaforma. Lo scopo principale del dashboard è fornire un modo semplice per organizzare gruppi di editor che stanno lavorando a un progetto comune e per tenere traccia di ciò che stanno facendo e delle voci alle quali hanno contribuito.','','Ein einfaches Online-Hilfsmittel, um die Editierungsaktivitäten auf Wikimedia zu organisieren. 

Der Zweck des Dashboards besteht hauptsächlich darin, die Zusammenarbeit von Gruppen zu erleichtern, die gemeinsam an einem Projekt arbeiten, und sich einen Überblick darüber zu verschaffen, was die Einzelnen tun und welche Inhalte sie bearbeitet haben.','','Suivre et gérer facilement les activités de editing sur Wikimédia avec un seul outil. L''objectif du site est de fournir un moyen facile d''organiser des groupes d''éditeurs qui travaillent sur un projet commun et de vérifier facilement ce qu''ils font et ce à quoi ils ont contribué.','',2,2,8,false,true),
	 ('Wikimedia','https://wikimediafoundation.org/','A Guide to Wikiversity','How to explore free educational resources','Una guida per Wikiversity','Come trovare risorse educative gratuite','Ein Wegweiser durch die Wikiversity','Freie Bildungsressourcen finden','Un guide pour Wikiversity','Comment trouver des ressources éducatives gratuites','https://en.wikiversity.org/wiki/Wikiversity:Browse',NULL,NULL,'Screen_Shot_2020-11-11_at_12.52.54.png',NULL,NULL,NULL,'A Guide to Wikiversity: This page offers a reasonably comprehensive guide to categorized Wikiversity content. The lists here are mainly generated dynamically (automatically) and provide multiple alternative navigation pathways. It is also possible to browse Wikiversity resources by name (alphabetical listing).','<p>Browse&nbsp;<a href="http://en.wikiversity.org/wiki/Wikiversity:Browse">this guide</a>&nbsp;you will find content:<br />
&nbsp;</p>

<ul>
	<li>By School</li>
	<li>By Resource Type</li>
	<li>By Learning Project</li>
	<li>By Educational Level</li>
	<li>By Participation</li>
	<li>By Completion status</li>
</ul>

<p>&nbsp;</p>

<p>Or you may browse these Wikiversity content as examples:&nbsp;</p>

<p>Capture a digital image - <a href="https://en.wikiversity.org/wiki/Capture_a_digital_image">https://en.wikiversity.org/wiki/Capture_a_digital_image</a></p>

<p>Edit a digital image - <a href="https://en.wikiversity.org/wiki/Edit_a_digital_image">https://en.wikiversity.org/wiki/Edit_a_digital_image</a></p>

<p>Bacteria and the body - <a href="https://en.wikiversity.org/wiki/Bacteria_and_the_body">https://en.wikiversity.org/wiki/Bacteria_and_the_body</a></p>

<p>Environmental education - <a href="https://en.wikiversity.org/wiki/Environmental_education">https://en.wikiversity.org/wiki/Environmental_education</a></p>

<p>&nbsp;</p>','Questa pagina offre una panoramica dei contenuti di Wikiversity. Gli elenchi che sono generati automaticamente, forniscono più percorsi di navigazione. È anche possibile sfogliare le risorse di Wikiversity per argomento.','<p style="line-height:1.38">Ecco alcuni modi possibili per esplorare Wikiversit&agrave;:&nbsp;</p>

<p style="line-height:1.38">&nbsp;</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Cercare voci riguardanti un determinato argomento, scrivendo una o due parole chiave nel box &quot;ricerca&quot; nella colonna a sinistra e facendo clic sul bottone &quot;Vai&quot; o su &quot;Ricerca&quot;.</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Consultare l&#39;elenco di tutte le voci.</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Seguire i collegamenti blu presenti nelle voci.</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Scegliere una voce a caso, facendo clic sul collegamento &quot;Una voce a caso&quot; nella colonna a sinistra oppure qui.</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Navigare nelle varie categorie, facendo clic sui collegamenti alle categorie presenti in basso in ciascuna pagina per accedere ad un elenco di eventuali sottocategorie; ricordate che in ogni pagina dedicata ad una categoria troverete anche le categorie alle quali essa appartiene (sono segnalate sempre in basso nella pagina).</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Vedere quali sono le ultime modifiche alle pagine di Wikiversit&agrave;, facendo clic sul collegamento &quot;Ultime modifiche&quot; nella colonna a sinistra oppure qui.</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Leggere le ultime voci inserite, facendo clic su &quot;Pagine speciali&quot; nel riquadro &quot;strumenti&quot; della colonna a sinistra e poi su &quot;Pagine nuove&quot;, oppure su &quot;nuove voci&quot; nella pagina delle &quot;Ultime modifiche&quot;, oppure qui.</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Trovare tutte le pagine collegate alla pagina che state leggendo, facendo clic su &quot;Puntano qui&quot; nel box &quot;strumenti&quot; della colonna a sinistra oppure qui.</p>

<p style="line-height: 1.38;">&nbsp;&nbsp; &nbsp;&bull;&nbsp;&nbsp; &nbsp;Usare le pagine speciali, facendo clic su &quot;Pagine speciali&quot; nel box &quot;strumenti&quot; della colonna a sinistra oppure qui.</p>

<p style="line-height:1.38">&nbsp;</p>

<p style="line-height:1.38"><a href="https://it.wikiversity.org/wiki/Aiuto:Esplorare">Maggior dettegli nella pagina dedicata</a></p>','Wikiversity ist so weitläufig, dass das Gesuchte nicht immer leicht zu finden ist. Hier finden Sie einige Tipps, die Ihnen beim Durchstöbern der Inhalte helfen werden. Klicken Sie unten auf «Mehr Informationen».','<p>Hier sind einige M&ouml;glichkeiten, die <strong>deutschsprachigen </strong>Inhalte der <a href="https://de.wikiversity.org/" target="_blank">Wikiversity</a> zu erkunden:&nbsp;</p>

<p>- Suchen Sie nach Eintr&auml;gen zu einem bestimmten Thema, indem Sie ein oder zwei Suchbegriffe im Feld &laquo;Wikiversity durchsuchen&raquo; oben rechts eingeben.</p>

<p>- Sehen Sie die Liste der <a href="https://de.wikiversity.org/wiki/Kategorie:Kurs" target="_blank">Kurse</a>&nbsp;oder der <a href="https://de.wikiversity.org/wiki/Kategorie:Projekt" target="_blank">Projekte</a>&nbsp;durch.</p>

<p>- Informieren Sie sich auf der Seite <a href="https://de.wikiversity.org/wiki/Wikiversity:Schnelleinstieg" target="_blank">Schnelleinstieg</a>.<br />
<br />
- Finden Sie alle Seiten, die mit der Seite, die Sie gerade lesen, verlinkt sind, indem Sie in der linken Spalte unter &laquo;Werkzeuge&raquo; auf &laquo;Links auf diese Seite&raquo; klicken.</p>

<p>- Finden Sie besondere Seiten (darunter Seitenlisten und Kategorienlisten), indem Sie unter &laquo;Werkzeuge&raquo; auf &laquo;Spezialseiten&raquo; klicken.&nbsp;</p>

<p>&nbsp;</p>

<p>Auf <a href="https://en.wikiversity.org/wiki/Wikiversity:Browse" target="_blank">Wikiversity:Browse</a>&nbsp;finden Sie <strong>englischsprachige </strong>Inhalte nach Kategorien eingeteilt.<br />
&nbsp;</p>','Cette page offre un aperçu du contenu de Wikiversity. Les listes générées automatiquement fournissent des indices thématiques. Vous pouvez également parcourir les ressources Wikiversity par sujet.','',1,NULL,7,false,true),
	 ('Wikimedia Community','https://wikimediafoundation.org/','Wikiversity','More than 100.000 educational resources','Wikiversity','Più di 100.000 risorse educative','Wikiversity','Mehr als 100 000 Bildungsressourcen','Wikiversity','Plus de 100 000 ressources pédagogiques','https://en.wikiversity.org',NULL,NULL,'wikiversity.png',NULL,'https://commons.wikimedia.org/wiki/File:The_Impact_of_Wikipedia_Dumisani_Ndubane.webm?embedplayer=yes','Vgrigas / CC BY-SA (https://creativecommons.org/licenses/by-sa/3.0)','Wikiversity is a project devoted to learning resources, learning projects, and research items for all levels, types, and styles of education: from preschool to university, including professional training and informal learning. We invite teachers, students, and researchers to join us in creating open educational resources and collaborative learning communities.','<p>Wikiversity is a Wikimedia Foundation project that supports learning communities, their learning materials, and resulting activities. It differs from Wikipedia in that it offers tutorials and other materials for the fostering of learning, rather than an encyclopedia; but like Wikipedia it is available in many languages. The launch of Wikiversity was announced at Wikimania 2006 as an idea to: host learning communities, so people who are actually trying to learn, actually have a place to come and interact and help each other figure out how to learn things.</p>

<p>A Guide to Wikiversity Content This page offers a reasonably comprehensive guide to categorized Wikiversity content. The lists here are mainly generated dynamically (automatically) and provide multiple alternative navigation pathways. It is also possible to browse Wikiversity resources by name (alphabetical listing).</p>

<p>You will find content by:</p>

<p>By School</p>

<p>By Resource Type</p>

<p>By Learning Project</p>

<p>By Educational Level</p>

<p>By Participation</p>

<p><strong>Educational and professional opportunities:</strong> Wikiversity helps improve european key competence such as: 1 Literacy competence; 2 Multilingual competence; 3 Mathematical competence and competence in science, technology, engineering; 4 Digital competence; 5 Personal, social and learning competence to learn competence.</p>','Wikiversità è un progetto dedicato alle risorse educative, ai progetti di apprendimento di ricerca che sono utilizzabili per tutti i livelli di insegnamento: dalla scuola materna all''università, compresa la formazione professionale e l''apprendimento informale.','<p>Wikiversit&agrave; &egrave; un progetto della Wikimedia Foundation che supporta le comunit&agrave; di apprendimento, i loro materiali di apprendimento e le attivit&agrave; che ne derivano. Si differenzia da Wikipedia in quanto offre tutorial e altri materiali per favorire l&#39;apprendimento, piuttosto che un&#39;enciclopedia; ma come Wikipedia &egrave; disponibile in molte lingue. Il lancio di Wikiversit&agrave; &egrave; stato annunciato a Wikimania 2006 come un&#39;idea per ospitare comunit&agrave; di apprendimento; cos&igrave; le persone che stanno effettivamente cercando di imparare hanno un posto dove venire e interagire e aiutarsi a vicenda a capire come imparare le cose. Invitiamo insegnanti, studenti e ricercatori a unirsi a noi nella creazione di risorse educative libere, e a fare parte di comunit&agrave; di apprendimento collaborativo.</p>

<p><strong>Opportunit&agrave; formative e professionali:</strong> Wikiversity aiuta a migliorare le competenze chiave europee quali: 1 Competenza di alfabetizzazione; 2 Competenza multilingue; 3 Competenza matematica e competenza in scienza, tecnologia, ingegneria; 4 Competenza digitale; 5 Competenza personale, sociale e capacit&agrave; di imparare ad imparare.</p>','Wikiversity widmet sich der Schaffung von Lehr- und Lernmaterialien für alle Stufen vom Kindergarten bis zur Universität, einschliesslich Berufsbildung und informelles Lernen.','<p>Wikiversity ist ein Projekt der Wikimedia Foundation, das sich auf Lerngemeinschaften, Lernmaterialien und Lernaktivit&auml;ten konzentriert. Wikiversity unterscheidet sich von Wikipedia dadurch, dass nicht eine Enzyklop&auml;die, sondern Lehrg&auml;nge und andere Materialien zur F&ouml;rderung des Lernens angeboten werden. Wie Wikipedia steht auch Wikiversity in vielen Sprachen zur Verf&uuml;gung. Das Grundprinzip von Wikiversity wurde anl&auml;sslich von Wikimania 2006 angek&uuml;ndigt: Ein Platz f&uuml;r Lerngemeinschaften schaffen, damit Menschen, die lernen wollen, einen Ort haben, wo sie sich treffen, sich gegenseitig helfen und gemeinsam herausfinden k&ouml;nnen, wie man etwas lernt.</p>

<p>Wir laden Lehrkr&auml;fte, Studierende und Forschende dazu ein, sich uns anzuschliessen, um freie Bildungsressourcen und kollektive Lerngemeinschaften zu schaffen.</p>

<p>Die&nbsp;Seite &laquo;<a href="http://openedu.ch/de/10/ein-wegweiser-durch-die-wikiversity" target="_self">Ein Wegweiser durch die Wikiversity</a>&raquo;&nbsp;bietet erleichterten Zugang zu Wikiversity-Inhalten.</p>

<p><strong>M&ouml;glichkeiten f&uuml;r Bildung&nbsp;und Beruf: </strong>Wikiversity tr&auml;gt zur Verbesserung&nbsp;der <a href="https://eur-lex.europa.eu/legal-content/DE/TXT/PDF/?uri=CELEX:32018H0604(01)">EU-Schl&uuml;sselkompetenzen</a> bei, insbesondere: &nbsp;1 Lese- und Schreibkompetenz; 2 Mehrsprachenkompetenz; 3 Mathematische Kompetenz und Kompetenz in Naturwissenschaften, Informatik und Technik; 4 Digitale Kompetenz; 5 Pers&ouml;nliche, soziale und Lernkompetenz.</p>','Wikiversity est une plateforme de cours consacrée à l''apprentissage et à la recherche, pour tous les niveaux, types et styles d''enseignement, du préscolaire à l''université, y compris la formation professionnelle et l''apprentissage informel.','<p>Wikiversity est un projet de la Wikimedia Foundation qui soutient les communaut&eacute;s d&#39;apprentissage, leur mat&eacute;riel d&#39;apprentissage et les activit&eacute;s qui en r&eacute;sultent. Il diff&egrave;re de Wikip&eacute;dia en ce qu&#39;il propose des tutoriels et autres mat&eacute;riels pour favoriser l&#39;apprentissage, plut&ocirc;t qu&#39;une encyclop&eacute;die; mais comme Wikipedia, il est disponible dans de nombreuses langues. Le lancement de Wikiversity a &eacute;t&eacute; annonc&eacute; lors de Wikimania 2006 comme une id&eacute;e pour accueillir des communaut&eacute;s d&#39;apprentissage, afin que les personnes qui essaient r&eacute;ellement d&#39;apprendre, aient en fait un endroit pour interagir et s&#39;entraider pour savoir comment apprendre des choses. Nous invitons les enseignants, les &eacute;tudiants et les chercheurs &agrave; se joindre &agrave; nous pour cr&eacute;er des ressources p&eacute;dagogiques ouvertes et des communaut&eacute;s d&#39;apprentissage collaboratif.</p>

<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:</strong> La Wikiversit&eacute; contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes telles que: la Comp&eacute;tence en alphab&eacute;tisation; Comp&eacute;tence multilingue; Comp&eacute;tence math&eacute;matique et comp&eacute;tence en science, technologie, ing&eacute;nierie; Comp&eacute;tence num&eacute;rique; Comp&eacute;tence personnelle, sociale et d&#39;apprentissage pour acqu&eacute;rir des comp&eacute;tences.</p>',2,2,11,true,true),
	 ('Wikimedia Community','https://wikimediafoundation.org/','Wiktionary','174 languages - 32.947.559 articles','Wiktionary','174 lingue - 32.947.559 articoli','Wiktionary','230 Sprachen – über 37 000 000 Artikel','Wiktionary','174 langues - 32.947.559 articles','https://www.wiktionary.org',NULL,NULL,'Screen_Shot_2020-11-25_at_12.21.24.png',NULL,NULL,NULL,'Wiktionary is  a collaborative project to produce a free-content multilingual dictionary of terms – including words, phrases, proverbs – in 174 languages. These entries may contain definitions, pronunciation guides, inflections, usage examples, related terms, images for illustration, among other features.','<p><strong>Educational and professional opportunities: </strong>Wiktionary helps improve european key competence such as: 1 Literacy competence: 2 Multilingual competence;4 Digital competence.</p>','Wiktionary è un progetto collaborativo per realizzare un dizionario multilingue a contenuto libero – incluse parole, frasi, proverbi – in 174 lingue. Le singole voci possono contenere definizioni, guide per la pronuncia, esempi di inflessioni, esempi di utilizzo, termini correlati e immagini illustrate, e altre caratteristiche.','<p><strong>Opportunit&agrave; educative e professionali:</strong> Wiktionary contribuisce ad acquisire competenze chiave europee per l&rsquo;apprendimento permanente, in particolare: 1 Competenza alfabetica funzionale; 2 Competenza multilinguistica; 4 Competenza digitale.</p>','Wiktionary hat zum Ziel, ein frei verfügbares, mehrsprachiges Wörterbuch für den Wortschatz aller Sprachen – einschliesslich Redewendungen und Sprichwörter – zu schaffen. Die Einträge umfassen unter anderem Bedeutungserklärungen,  Aussprache,  Grammatik, Verwendungsbeispiele, verwandte Wörter und Illustrationen.','<p><strong>M&ouml;glichkeiten f&uuml;r Bildung&nbsp;und Beruf:</strong> WWikiversity tr&auml;gt zur Verbesserung&nbsp;der&nbsp;<a href="https://eur-lex.europa.eu/legal-content/DE/TXT/PDF/?uri=CELEX:32018H0604(01)">EU-Schl&uuml;sselkompetenzen</a>&nbsp;bei, insbesondere: &nbsp;1 Lese- und Schreibkompetenz; 2 Mehrsprachenkompetenz; 4 Digitale Kompetenz.</p>','Le Wiktionnaire est un projet collaboratif visant à produire un dictionnaire multilingue de termes gratuits - y compris des mots, des phrases, et des proverbes – dans 174 langues. Les entrées du Wiktionnaire contiennent des définitions, des guides de prononciation, des inflexions, des exemples d''utilisation, des termes associés, des images à titre d''illustration, entre autres fonctionnalités.','<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:</strong> Wiktionary contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes: 1 Comp&eacute;tence lecture et &eacute;criture; 2 &nbsp;Comp&eacute;tence multilinguisme; &nbsp;4 Comp&eacute;tence num&eacute;rique.</p>',2,2,12,false,true),
	 ('Wikimedia Community','https://wikimediafoundation.org/','Hackathon','Programmers Contribution Marathons','Hackathon','Maratona di programmazione','Hackathon','Programmier-Marathon','Hackathon','Marathon de programmation','https://de.wikipedia.org/wiki/Hackathon',NULL,NULL,'1024px-Wikimedia_Hackathon_2013_Amsterdam_-_Flickr_-_Sebastiaan_ter_Burg_28.jpg','Wikimedia Hackathon 2013, Amsterdam. Sebastiaan ter Burg CC By',NULL,NULL,'A hackathon is an event in which computer programmers, graphic designers, interface designers, project managers, and others  domain experts collaborate intensively on programming projects. The goal of a hackathon is to create functioning software or hardware by the end of the event,  which can last from several hours to several days. Participants suggest ideas and form teams, based on individual interests and skills.','<p>Hackathons tend to have a specific focus, which can include the programming language used, the operating system, or an application. &nbsp;Participants suggest ideas and form teams, based on individual interests and skills.</p>

<p><strong>Educational and professional opportunities: </strong>Hackathon helps improve european key competence such as: 3 Mathematical competence and competence in science, technology, engineering; 4 Digital competence; 5 Personal, social and learning to learn competence; 7 Entrepreneurship competence.</p>','Un hackathon è un evento al quale partecipano esperti dell''informatica quali programmatori, grafici, designer di interfacce o project manager che collaborano intensamente a progetti di programmazione. L''obiettivo di un hackathon è quello di creare software o hardware funzionanti entro la fine dell''evento, che può durare da alcune ore a diversi giorni.','<p>Gli hackathon tendono ad avere un focus specifico per esempio un linguaggio di programmazione, un sistema operativo o un&#39;applicazione. I partecipanti suggeriscono idee e formano squadre, basate su interessi e competenze individuali.</p>

<p><strong>Opportunit&agrave; educative e professionali:</strong> Hackathon contribuisce ad acquisire competenze chiave europee per l&rsquo;apprendimento permanente, in particolare: 3 Competenza matematica e competenza in scienze, tecnologie e ingegneria; 4 Competenza digitale; 5 Competenza personale, sociale e capacit&agrave; di imparare ad imparare; 7 Competenza imprenditoriale.</p>','An einem Hackathon arbeiten Experten in Bereichen wie Programmierung, Grafikdesign, Interfacedesign und Projekt-management gemeinsam intensiv an Programmierprojekten. Ziel des Hackathons ist es, innerhalb  einiger Stunden oder Tage funktionierende Soft- oder Hardware zu erstellen.','<p>Hackathons haben meist einen spezifischen Fokus, zum Beispiel eine Programmiersprache, ein Betriebssystem oder eine Anwendung. Basierend auf den Interessen und Fähigkeiten der Einzelnen werden Teams gebildet.
</p>

<p><strong>M&ouml;glichkeiten f&uuml;r Bildung und Beruf:</strong> Hackathons unterst&uuml;tzen bei der Verbesserung der EU-Schl&uuml;sselkompetenzen wie: 3 Mathematische Kompetenz und Kompetenz in Naturwissenschaften, Informatik und Technik; 4 Digitale Kompetenz; 5 Pers&ouml;nliche, soziale und Lernkompetenz; 7 Unternehmerische Kompetenz.</p>','Un hackathon est un événement dans lequel les programmeurs informatiques, les graphistes, les concepteurs d''interfaces, les chefs de projet, et d''autres  experts collaborent intensivement sur des projets de programmation. L''objectif d''un hackathon est de créer des logiciels ou du matériel pendant l’événement,  qui peut avoir une durée allant de plusieurs heures à plusieurs jours.','<p><strong>Opportunit&eacute;s &eacute;ducatives et professionnelles:</strong> Hackathon contribue &agrave; am&eacute;liorer les comp&eacute;tences cl&eacute;s europ&eacute;ennes: 3 Comp&eacute;tence math&eacute;matique et comp&eacute;tences en sciences, en technologies et en ing&eacute;nierie, 4 Comp&eacute;tence num&eacute;rique, 5 Comp&eacute;tences personnelles et sociales et capacit&eacute; d&rsquo;apprendre &agrave; apprendre; 7 Comp&eacute;tences entrepreneuriales.</p>',2,2,19,true,true),
	 ('Amical Wikimedia',NULL,'Catalan Sign Language and Wiktionary','Spreading awareness','La lingua dei segni catalana e Wiktionary','Diffondere la consapevolezza','Katalanische Gebärdensprache und Wiktionary','Bewusstseinsverbreitung','La langue des signes catalane et Wiktionnaire','la sensibilisation du public',NULL,NULL,NULL,'',NULL,NULL,NULL,'The goal of this project is to add more Catalan Sign Language entries in the Catalan Wiktionary with the purpose of not only spread awareness of this language but also to help those who want to learn it. We currently have almost 1,000 signs.','','L''obiettivo di questo progetto è quello di aggiungere più voci della lingua dei segni catalana nel Wiktionary catalano con lo scopo non solo di diffondere la conoscenza di questa lingua, ma anche di aiutare coloro che vogliono impararla. Attualmente abbiamo quasi 1.000 segni.','','Das Ziel dieses Projekts ist es, mehr Einträge für die katalanische Gebärdensprache in das katalanische Wiktionary aufzunehmen, um nicht nur das Bewusstsein für diese Sprache zu verbreiten, sondern auch denjenigen zu helfen, die sie lernen wollen. Wir haben derzeit fast 1.000 Gebärden.','','Le but de ce projet est d''ajouter plus d''entrées en langue des signes catalane dans le Wiktionnaire catalan dans le but non seulement de faire connaître cette langue mais aussi d''aider ceux qui veulent l''apprendre. Nous avons actuellement près de 1 000 signes.','',2,NULL,31,false,false);
INSERT INTO public.sito_project ("by",by_url,title_en,subtitle_en,title_it,subtitle_it,title_de,subtitle_de,title_fr,subtitle_fr,link,date_from,date_to,project_image,image_credits,project_video,video_credits,short_description_en,more_information_en,short_description_it,more_information_it,short_description_de,more_information_de,short_description_fr,more_information_fr,content_type_id,licence_id,my_order,image_in_home,published) VALUES
	 ('Wikimedia España',NULL,'Immunomedia','Immunology and Wikipedia','Immunomedia','Immunologia e Wikipedia','Immunomedia','Immunologie und Wikipedia','Immunomedia','Immunologie et Wikipédia',NULL,NULL,NULL,'',NULL,NULL,NULL,'Activity of the interuniversity project Immunomedia, with the realization of articles in Spanish (translation or creation or improvement) related to Human Immunology, Immunopathology and Immunotherapy. It is a group activity within the subject of Human Immunology at the University of Valladolid.','<p>We started the collaboration during the academic year 2017-2018, it is incorporated as an activity of the interuniversity project Immunomedia, the realization of wikis in Spanish (translation or creation or improvement) related to Human Immunology, Immunopathology and Immunotherapy. It is a group activity within the subject of Human Immunology at the University of Valladolid under the supervision of Alfredo Corell. In the courses 2017-18, 2018-19 and 2019-20 more than 20 wikis related to Immunology have been improved and updated and more than 10 original images have been added in wikimedia commons.</p>

<p>The project is organized into different lines of action, which strategically respond to the different challenges that have been addressed since its inception:</p>

<ul>
	<li>Creation of multimedia learning objects in Immunology.</li>
	<li>Creation of contents in Wikicommons and Wikipedia (Inmunopedia).</li>
	<li>&quot;Content curation of immunology learning and dissemination material.</li>
	<li>Social networks and teaching/dissemination of Immunology</li>
	<li>Taking defenses to the streets (different activities commemorating the International Day of Immunology).</li>
	<li>Internationalization of the project (English, French, Portuguese)</li>
	<li>Assessment of knowledge/learning through games (gamification)</li>
	<li>Creation of a web content portal &quot;Immunomedia3&quot; that gives structure to all the previous elements.</li>
</ul>

<p>For more information look at the following websites:</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Immunomedia</p>

<p>https://www.immunomedia.org/</p>

<p>&nbsp;</p>','Attività del progetto interuniversitario Immunomedia, con la realizzazione di articoli in spagnolo (traduzione o creazione o miglioramento) relativi a Immunologia Umana, Immunopatologia e Immunoterapia. Si tratta di un''attività di gruppo all''interno della materia di Immunologia Umana dell''Università di Valladolid.','<p>Abbiamo iniziato la collaborazione durante l&#39;anno accademico 2017-2018, &egrave; incorporata come attivit&agrave; del progetto interuniversitario Immunomedia, la realizzazione di wiki in spagnolo (traduzione o creazione o miglioramento) relativi all&#39;Immunologia umana, Immunopatologia e Immunoterapia. Si tratta di un&#39;attivit&agrave; di gruppo all&#39;interno della materia di Immunologia Umana dell&#39;Universit&agrave; di Valladolid sotto la supervisione di Alfredo Corell. Nei corsi 2017-18, 2018-19 e 2019-20 sono stati migliorati e aggiornati pi&ugrave; di 20 wiki relativi all&#39;Immunologia e sono state aggiunte pi&ugrave; di 10 immagini originali in wikimedia commons.</p>

<p>Il progetto &egrave; organizzato in diverse linee di azione, che rispondono strategicamente alle diverse sfide che sono state affrontate dal suo inizio:</p>

<ul>
	<li>Creazione di oggetti didattici multimediali in Immunologia.</li>
	<li>Creazione di contenuti in Wikicommons e Wikipedia (Inmunopedia).</li>
	<li>&quot;Content curation&quot; di materiale di apprendimento e divulgazione in immunologia.</li>
	<li>Reti sociali e insegnamento/diffusione dell&#39;immunologia</li>
	<li>Portare le difese nelle strade (diverse attivit&agrave; di commemorazione della Giornata Internazionale dell&#39;Immunologia).</li>
	<li>Internazionalizzazione del progetto (inglese, francese, portoghese)</li>
	<li>Valutazione delle conoscenze/apprendimento attraverso giochi (gamification)</li>
	<li>Creazione di un portale di contenuti web &quot;Immunomedia3&quot; che d&agrave; struttura a tutti gli elementi precedenti.</li>
</ul>

<p>Per maggiori informazioni guardare i seguenti siti web:</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Immunomedia</p>

<p>https://www.immunomedia.org/</p>','Aktivität des interuniversitären Projekts Immunomedia, mit der Realisierung von Artikeln in spanischer Sprache (Übersetzung oder Erstellung oder Verbesserung) im Zusammenhang mit der Humanimmunologie, Immunpathologie und Immuntherapie. Es handelt sich um eine Gruppenaktivität innerhalb des Fachs Humanimmunologie an der Universität Valladolid.','<p>Wir haben die Zusammenarbeit im akademischen Jahr 2017-2018 begonnen. Sie ist eine Aktivit&auml;t des interuniversit&auml;ren Projekts Immunomedia, der Realisierung von Wikis auf Spanisch (&Uuml;bersetzung oder Erstellung oder Verbesserung) im Zusammenhang mit Humanimmunologie, Immunpathologie und Immuntherapie. Es handelt sich um eine Gruppenaktivit&auml;t innerhalb des Fachs Humanimmunologie an der Universit&auml;t Valladolid unter der Leitung von Alfredo Corell. In den Kursen 2017-18, 2018-19 und 2019-20 wurden mehr als 20 Wikis zum Thema Immunologie verbessert und aktualisiert und mehr als 10 Originalbilder in wikimedia commons hinzugef&uuml;gt.</p>

<p>Das Projekt ist in verschiedene Aktionslinien gegliedert, die strategisch auf die verschiedenen Herausforderungen reagieren, die seit Beginn des Projekts angegangen wurden:</p>

<ul>
	<li>Erstellung von multimedialen Lernobjekten in der Immunologie.</li>
	<li>Erstellung von Inhalten in Wikicommons und Wikipedia (Inmunopedia).</li>
	<li>&quot;Content Curation&quot; von immunologischem Lern- und Verbreitungsmaterial.</li>
	<li>Soziale Netzwerke und Lehre/Verbreitung der Immunologie</li>
	<li>Die Verteidigung auf die Stra&szlig;e bringen (verschiedene Aktivit&auml;ten anl&auml;sslich des Internationalen Tages der Immunologie).</li>
	<li>Internationalisierung des Projekts (Englisch, Franz&ouml;sisch, Portugiesisch)</li>
	<li>Bewertung des Wissens/Lernens durch Spiele (Gamification)</li>
	<li>Erstellung eines Webinhaltsportals &quot;Immunomedia3&quot;, das allen vorangegangenen Elementen Struktur verleiht.</li>
</ul>

<p>Weitere Informationen finden Sie auf den folgenden Websites:</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Immunomedia</p>

<p>https://www.immunomedia.org/</p>','Activité du projet interuniversitaire Immunomedia, avec la réalisation d''articles en espagnol (traduction ou création ou amélioration) liés à l''Immunologie humaine, l''Immunopathologie et l''Immunothérapie. Il s''agit d''une activité de groupe au sein de la matière Immunologie humaine de l''Université de Valladolid.','<p>Nous avons commenc&eacute; la collaboration pendant l&#39;ann&eacute;e acad&eacute;mique 2017-2018, elle est incorpor&eacute;e comme une activit&eacute; du projet interuniversitaire Immunomedia, la r&eacute;alisation de wikis en espagnol (traduction ou cr&eacute;ation ou am&eacute;lioration) li&eacute;s &agrave; l&#39;Immunologie Humaine, Immunopathologie et Immunoth&eacute;rapie. Il s&#39;agit d&#39;une activit&eacute; de groupe au sein de la mati&egrave;re Immunologie humaine de l&#39;Universit&eacute; de Valladolid, sous la supervision d&#39;Alfredo Corell. Dans les cours 2017-18, 2018-19 et 2019-20, plus de 20 wikis li&eacute;s &agrave; l&#39;immunologie ont &eacute;t&eacute; am&eacute;lior&eacute;s et mis &agrave; jour et plus de 10 images originales ont &eacute;t&eacute; ajout&eacute;es dans wikimedia commons.</p>

<p>Le projet est organis&eacute; en diff&eacute;rentes lignes d&#39;action, qui r&eacute;pondent strat&eacute;giquement aux diff&eacute;rents d&eacute;fis qui ont &eacute;t&eacute; relev&eacute;s depuis son lancement :</p>

<ul>
	<li>Cr&eacute;ation d&#39;objets d&#39;apprentissage multim&eacute;dia en immunologie.</li>
	<li>Cr&eacute;ation de contenus dans Wikicommons et Wikipedia (Inmunopedia).</li>
	<li>&quot; Content curation &quot; de mat&eacute;riel d&#39;apprentissage et de diffusion en immunologie.</li>
	<li>R&eacute;seaux sociaux et enseignement/diffusion de l&#39;immunologie</li>
	<li>Faire descendre les d&eacute;fenses dans la rue (diff&eacute;rentes activit&eacute;s comm&eacute;morant la Journ&eacute;e internationale de l&#39;immunologie).</li>
	<li>Internationalisation du projet (anglais, fran&ccedil;ais, portugais)</li>
	<li>&Eacute;valuation des connaissances/apprentissage par le biais de jeux (gamification)</li>
	<li>Cr&eacute;ation d&#39;un portail de contenu web &quot;Immunomedia3&quot; qui donne une structure &agrave; tous les &eacute;l&eacute;ments pr&eacute;c&eacute;dents.</li>
</ul>

<p>Pour plus d&#39;informations, consultez les sites Web suivants :</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Immunomedia</p>

<p>https://www.immunomedia.org/</p>',2,NULL,33,false,true),
	 ('Wikimedia Armenia',NULL,'WikiCamp Armenia','WikiCamp for young Wikimedians','WikiCamp Armenia','WikiCamp per giovani wikimediani','WikiCamp Armenia','WikiCamp für junge wikimedianer','WikiCamp Armenia','WikiCamp pour les jeunes wikimédiens',NULL,NULL,NULL,'',NULL,NULL,NULL,'Young Wikimedians within the age 14-20 gather together to write and contribute on Wikimedia projects.','','I giovani wikimediani tra i 14 e i 20 anni si riuniscono per scrivere e contribuire ai progetti Wikimedia.','','Junge Wikimedianer im Alter von 14-20 Jahren treffen sich, um an Wikimedia-Projekten zu schreiben und mitzuarbeiten.','','Les jeunes Wikimédiens âgés de 14 à 20 ans se réunissent pour écrire et contribuer aux projets Wikimedia.','',2,NULL,22,false,true),
	 ('Wikimedia España',NULL,'Translation apprentices and Wikipedia','Translation and Wikipedia','Apprendisti traduttori e Wikipedia','Traduzione e Wikipedia','Übersetzungslehrlinge und Wikipedia','Übersetzung und Wikipedia','Apprentis traducteurs et Wikipedia','Traduction and Wikipédia',NULL,NULL,NULL,'',NULL,NULL,NULL,'In the project "Translation apprentices with Wikipedia" students of the subject TI0920 2014-2015 of Translation and Interpreting of the University Jaime I (Castellón, Spain) manage and translate articles from English to Spanish related to cinema. This project is linked to its English Wikipedia counterpart "Universitat Jaume I - E-translating the Wikipedia". Coordinator/Professor: María Calzada Pérez. Supported by Wikimedia Spain.','<p>As part of the TI0920 Translation and Interpreting course at the Jaime I University (Castell&oacute;n, Spain), second year students will translate (from English to Spanish) or expand on articles related to cinema. ADELEX ANALYSER (ADA) will be used to evaluate the lexical/terminological difficulty of the texts chosen for translation. Students will collaborate in all stages of the translation. This project is linked to the Universitat Jaume I - E-translating project.</p>

<p>See the following website for more information:</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Aprendices_de_traducci%C3%B3n_con_la_Wikipedia</p>','Nel progetto "Apprendimento della traduzione con Wikipedia" gli studenti della materia TI0920 2014-2015 di Traduzione e Interpretazione dell''Università Jaime I (Castellón, Spagna) gestiscono e traducono articoli dall''inglese allo spagnolo relativi al cinema. Questo progetto è collegato alla sua controparte inglese di Wikipedia "Universitat Jaume I - E-translating the Wikipedia". Coordinatore/Professore: María Calzada Pérez. Sostenuto da Wikimedia Spagna.','<p>Nell&#39;ambito del corso di traduzione e interpretariato TI0920 dell&#39;Universit&agrave; Jaime I (Castell&oacute;n, Spagna), gli studenti del secondo anno tradurranno (dall&#39;inglese allo spagnolo) o amplieranno articoli relativi al cinema. ADELEX ANALYSER (ADA) sar&agrave; utilizzato per valutare la difficolt&agrave; lessicale/terminologica dei testi scelti per la traduzione. Gli studenti collaboreranno in tutte le fasi della traduzione. Questo progetto &egrave; legato al progetto Universitat Jaume I - E-translating.</p>

<p>Consultare il sito web seguente per maggiori informazioni:</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Aprendices_de_traducci%C3%B3n_con_la_Wikipedia</p>','Im Projekt "Übersetzungslehrlinge mit Wikipedia" verwalten und übersetzen Studierende des Fachs TI0920 2014-2015 des Studiengangs Übersetzen und Dolmetschen der Universität Jaime I (Castellón, Spanien) Artikel zum Thema Kino vom Englischen ins Spanische. Dieses Projekt ist mit seinem englischen Wikipedia-Pendant "Universitat Jaume I - E-translating the Wikipedia" verknüpft. Koordinatorin/Professorin: María Calzada Pérez. Unterstützt von Wikimedia Spanien.','<p>Im Rahmen des Kurses TI0920 &Uuml;bersetzen und Dolmetschen an der Universit&auml;t Jaime I (Castell&oacute;n, Spanien) werden Studenten des zweiten Studienjahres Artikel zum Thema Kino &uuml;bersetzen (vom Englischen ins Spanische) oder erg&auml;nzen. ADELEX ANALYSER (ADA) wird verwendet, um den lexikalischen/terminologischen Schwierigkeitsgrad der f&uuml;r die &Uuml;bersetzung ausgew&auml;hlten Texte zu bewerten. Die Studierenden werden in allen Phasen der &Uuml;bersetzung mitarbeiten. Dieses Projekt ist mit dem Projekt der Universitat Jaume I - E-translating verbunden.</p>

<p>Auf der folgenden Website finden Sie weitere Informationen:</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Aprendices_de_traducci%C3%B3n_con_la_Wikipedia</p>','Dans le projet "Apprentissage de la traduction avec Wikipédia", les étudiants de la matière TI0920 2014-2015 de Traduction et Interprétation de l''Université Jaime I (Castellón, Espagne) gèrent et traduisent des articles de l''anglais à l''espagnol liés au cinéma. Ce projet est lié à son homologue anglais "Universitat Jaume I - E-translating the Wikipedia". Coordinateur/Professeur : María Calzada Pérez. Soutenu par Wikimedia Espagne.','<p>Dans le cadre du cours de traduction et d&#39;interpr&eacute;tation TI0920 de l&#39;universit&eacute; Jaime I (Castell&oacute;n, Espagne), des &eacute;tudiants de deuxi&egrave;me ann&eacute;e traduiront (de l&#39;anglais vers l&#39;espagnol) ou d&eacute;velopperont des articles li&eacute;s au cin&eacute;ma. ADELEX ANALYSER (ADA) sera utilis&eacute; pour &eacute;valuer la difficult&eacute; lexicale/terminologique des textes choisis pour la traduction. Les &eacute;tudiants collaboreront &agrave; toutes les &eacute;tapes de la traduction. Ce projet est li&eacute; &agrave; celui de l&#39;Universitat Jaume I - E-translating.</p>

<p>Voir le site web suivant pour plus d&#39;informations :</p>

<p>https://es.wikipedia.org/wiki/Wikipedia:Proyecto_educativo/Aprendices_de_traducci%C3%B3n_con_la_Wikipedia</p>',2,NULL,34,false,true),
	 ('Wikimedia CH, UZH',NULL,'Wikipedia as a tool for university teaching','An alternative way of teaching','Wikipedia come strumento per l''insegnamento universitario','Un modo alternativo di insegnare','Wikipedia als Werkzeug für die Hochschullehre','Eine alternative Art des Unterrichts','Wikipédia comme outil d''enseignement universitaire','Une autre façon d''enseigner',NULL,NULL,NULL,'',NULL,NULL,NULL,'In the academic world, the use of Wikipedia is still considered a taboo; however, the impact of the online encyclopaedia, even on academia, cannot be neglected.','<p>This ambivalence provided the starting point for a university teaching project conducted at the Department for the Study of Religions at the University of Zurich. The aim of the course was that the students should actively experience the mechanisms of Wikipedia rather than only discuss advantages and disadvantages on a theoretical level. Aiming to use Wikipedia as a didactic tool and platform, the focal point was that the students should actually write Wikipedia articles, change existing articles, and engage with their fellow students as well as the wider Wikipedia community.&nbsp;</p>','Nel mondo accademico l''utilizzo di Wikipedia è ancora considerato un tabù; ad ogni modo l''impatto dell''enciclopedia anche nel mondo accademico non può essere negato.','<p>Questa ambivalenza ha costituito il punto di partenza per un progetto universitario al dipartimento di Teologia dell&#39;Universit&agrave; di Zurigo. Lo scopo di questo corso era che gli studenti sperimentassero attivamente i meccanismi di Wikipedia anzich&eacute; discuterne vantaggi e svantaggi solo a livello teorico. Con lo scopo di usare Wikipedia come strumento didattico e piattafroma, il punto focale era che gli studenti scrivessero articoli di Wikipedia, modificassero articoli esistenti e si confrontassero con gli altri studenti e con la pi&ugrave; vasta comunit&agrave; di Wikipedia.&nbsp;</p>','Die Verwendung von Wikipedia wird an Universitäten tabuisiert; die Wirkmächtigkeit der Online-Enzyklopädie, auch auf den akademischen Betrieb, lässt sich allerdings nicht negieren','<p>Diese Ambivalenz diente als Ausgangspunkt eines universit&auml;ren Lehrprojekts, das am Religionswissenschaftlichen Seminar der Universit&auml;t Zürich durchgeführt wurde. Anstatt Vor- und Nachteile der Online-Enzyklop&auml;die lediglich theoretisch zu reflektieren, sollte sie praktisch erfahrbar und didaktisch nutzbar gemacht werden: Die Studierenden verfassten Wikipedia-Artikel, nahmen Ver&auml;nderungen an bestehenden Artikeln vor, interagierten untereinander und mit der Wikipedia-Community.&nbsp;&nbsp;</p>','Dans le monde académique, l''utilisation de Wikipédia reste taboue ; cependant, l’impact de l''encyclopédie
en ligne, y compris sur les activités universitaires, est bien réel.','<p>Cette ambivalence a servi de point de d&eacute;part &agrave; un projet d&#39;enseignement universitaire conduit au D&eacute;partement de science des religions de l&rsquo;Universit&eacute; de Zurich. L&rsquo;objectif de ce cours &eacute;tait que les &eacute;tudiant&middot;e&middot;s exp&eacute;rimentent activement les m&eacute;canismes de l&rsquo;encyclop&eacute;die en ligne plut&ocirc;t que d&rsquo;en discuter uniquement les avantages et les inconv&eacute;nients sur un plan th&eacute;orique. Les &eacute;tudiant&middot;e&middot;s ont r&eacute;dig&eacute; des articles sur Wikip&eacute;dia, apport&eacute; des modifications aux articles existants et interagi entre eux ainsi qu&rsquo;avec la communaut&eacute; Wikip&eacute;dia.&nbsp;</p>',2,NULL,20,false,true),
	 ('Wikimedia Community Ireland',NULL,'Module with National Gallery of Ireland','Students and art','Modulo con la Galleria Nazionale d''Irlanda','Gli studenti e l''arte','Modul mit National Gallery of Ireland','Studenten und Kunst','Module avec la National Gallery of Ireland','Les étudiants et l''art',NULL,NULL,NULL,'',NULL,NULL,NULL,'Each year, the National Gallery of Ireland take a small group of Transition Year students (aged approx 15-16) for a week of internship in the Gallery. Since 2018, Wikimedia Community Ireland have collaborated with the Gallery''s library to deliver a Wikipedia editing workshop as part of this week. The students work on pages relating to the Gallery and its collections using resources from the library.','','Ogni anno, la National Gallery of Ireland prende un piccolo gruppo di studenti del Transition Year (di circa 15-16 anni) per una settimana di stage nella Galleria. Dal 2018, Wikimedia Community Ireland ha collaborato con la biblioteca della Galleria per offrire un workshop di editing di Wikipedia come parte di questa settimana. Gli studenti lavorano su pagine relative alla Galleria e alle sue collezioni utilizzando le risorse della biblioteca.','','Jedes Jahr nimmt die National Gallery of Ireland eine kleine Gruppe von Transition Year-Schülern (im Alter von ca. 15-16 Jahren) für eine Woche zu einem Praktikum in die Galerie. Seit 2018 arbeitet die Wikimedia Community Ireland mit der Bibliothek der Galerie zusammen, um einen Wikipedia-Bearbeitungsworkshop als Teil dieser Woche anzubieten. Die Schüler arbeiten an Seiten, die sich auf die Galerie und ihre Sammlungen beziehen, und nutzen dabei Ressourcen aus der Bibliothek.','<p>&nbsp;</p>

<p>&nbsp;</p>','Chaque année, la National Gallery of Ireland prend un petit groupe d''étudiants de l''année de transition (âgés d''environ 15-16 ans) pour une semaine de stage dans la galerie. Depuis 2018, Wikimedia Community Ireland collabore avec la bibliothèque de la Galerie pour proposer un atelier d''édition Wikipédia dans le cadre de cette semaine. Les élèves travaillent sur des pages relatives à la Galerie et à ses collections en utilisant les ressources de la bibliothèque.','',2,NULL,32,false,false),
	 ('School of Law, Singapore Management University',NULL,'University law students'' editing','Law students edit Wikipedia','Redazione degli studenti universitari di diritto','Gli studenti di legge modificano Wikipedia','Redaktion von Jurastudenten','Jurastudenten bearbeiten Wikipedia','la rédaction des étudiants en droit de l''université','Les étudiants en droit modifient Wikipédia',NULL,NULL,NULL,'',NULL,NULL,NULL,'Law students edit Wikipedia articles.','<p>
<style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}-->
</style>
Students work in groups to prepare Wikipedia articles, or parts of articles, about constitutional and administrative law in Singapore.The aims of the project are to encourage students to internalize the material covered in the course; and to contribute towards producing a body of accurate information about Singapore constitutional and administrative law that is freely available on the Internet.</p>','Gli studenti di legge modificano gli articoli di Wikipedia.','<p>Gli studenti lavorano in gruppi per preparare articoli di Wikipedia, o parti di articoli, sul diritto costituzionale e amministrativo di Singapore. Gli obiettivi del progetto sono di incoraggiare gli studenti a interiorizzare il materiale trattato nel corso; e di contribuire a produrre un corpo di informazioni accurate sul diritto costituzionale e amministrativo di Singapore che sia liberamente disponibile su Internet.</p>','Jurastudenten bearbeiten Wikipedia-Artikel.','<p>Die Studenten arbeiten in Gruppen, um Wikipedia-Artikel oder Teile von Artikeln &uuml;ber das Verfassungs- und Verwaltungsrecht in Singapur zu verfassen. Die Ziele des Projekts sind es, die Studenten zu ermutigen, den im Kurs behandelten Stoff zu verinnerlichen und dazu beizutragen, dass ein Korpus von genauen Informationen &uuml;ber das Verfassungs- und Verwaltungsrecht von Singapur entsteht, der im Internet frei verf&uuml;gbar ist.</p>','Les étudiants en droit modifient les articles de Wikipédia.','<p>Les &eacute;tudiants travaillent en groupes pour pr&eacute;parer des articles Wikip&eacute;dia, ou des parties d&#39;articles, sur le droit constitutionnel et administratif de Singapour. Les objectifs du projet sont d&#39;encourager les &eacute;tudiants &agrave; int&eacute;rioriser la mati&egrave;re couverte par le cours et de contribuer &agrave; la production d&#39;un ensemble d&#39;informations pr&eacute;cises sur le droit constitutionnel et administratif de Singapour, librement disponible sur Internet.</p>',2,NULL,25,false,true),
	 ('Wikimedistas de Bolivia',NULL,'Teacher training of teachers in Bolivia','Teachers and Wikipedia','Formazione degli insegnanti in Bolivia','Gli insegnanti e Wikipedia','Ausbildung von Lehrern in Bolivien','Lehrer und Wikipedia','Formation des enseignants en Bolivie','Enseignants et Wikipédia',NULL,NULL,NULL,'',NULL,NULL,NULL,'32 primary and secondary school teachers were chosen from 5 different regions of Bolivia and were invited to be part of a three-day bootcamp.','<p>They attended different workshops, about how to use Internet in class. As part of these trainings teachers were helped to edit on Wikipedia and understand the inner workings of the Enciclopedia.&nbsp;It covered four areas: 1. How to use web browsers and find reliable information. 2. Digital content creation. 3. Wikipedia, how to read it and create content. 4. Information literacy (history, values and communities).</p>

<p>Erlan Vega participated as a facilitator. Two foundations paid for the place, the connection costs and traveling costs for all teachers who were accepted.&nbsp;</p>

<p>&nbsp;</p>
<style type="text/css"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}-->
</style>','32 insegnanti di scuola primaria e secondaria sono stati scelti da 5 diverse regioni della Bolivia e sono stati invitati a far parte di un bootcamp di tre giorni.','<p>Hanno partecipato a diversi workshop, su come utilizzare Internet in classe. Come parte di queste formazioni gli insegnanti sono stati aiutati a modificare Wikipedia e a capire il funzionamento interno dell&#39;Enciclopedia. Ha coperto quattro aree: 1. Come usare i browser web e trovare informazioni affidabili. 2. Creazione di contenuti digitali. 3. Wikipedia, come leggerla e creare contenuti. 4. Alfabetizzazione dell&#39;informazione (storia, valori e comunit&agrave;)</p>

<p>Erlan Vega ha partecipato come facilitatore. Due fondazioni hanno pagato il posto, i costi di connessione e le spese di viaggio per tutti gli insegnanti che sono stati accettati.&nbsp;</p>','32 Grund- und Sekundarschullehrer aus 5 verschiedenen Regionen Boliviens wurden ausgewählt und zu einem dreitägigen Bootcamp eingeladen.','<p>Sie besuchten verschiedene Workshops, wie man das Internet im Unterricht nutzen kann. Als Teil dieser Schulungen wurde den Lehrern geholfen, auf Wikipedia zu editieren und die innere Funktionsweise der Enzyklop&auml;die zu verstehen. Sie umfasste vier Bereiche: 1. Nutzung von Webbrowsern und Suche nach zuverl&auml;ssigen Informationen. 2. Erstellung digitaler Inhalte. 3. Wikipedia, wie man sie liest und Inhalte erstellt. 4. Informationskompetenz (Geschichte, Werte und Gemeinschaften)</p>

<p>Erlan Vega nahm als Vermittler teil. Zwei Stiftungen &uuml;bernahmen die Kosten f&uuml;r den Ort, die Verbindungskosten und die Reisekosten f&uuml;r alle angenommenen Lehrer.&nbsp;</p>','32 enseignants du primaire et du secondaire ont été sélectionnés dans 5 régions différentes de Bolivie et ont été invités à participer à un camp d''entraînement de trois jours.','<p>Ils ont particip&eacute; &agrave; diff&eacute;rents ateliers sur l&#39;utilisation d&#39;Internet en classe. Dans le cadre de ces formations, les enseignants ont &eacute;t&eacute; aid&eacute;s &agrave; &eacute;diter sur Wikipedia et &agrave; comprendre le fonctionnement interne de l&#39;encyclop&eacute;die. Elle couvrait quatre domaines : 1. Comment utiliser les navigateurs web et trouver des informations fiables. 2. La cr&eacute;ation de contenu num&eacute;rique. 3. Wikip&eacute;dia, comment la lire et cr&eacute;er du contenu. 4. Ma&icirc;trise de l&#39;information (histoire, valeurs et communaut&eacute;s).</p>

<p>Erlan Vega a particip&eacute; en tant qu&#39;animateur. Deux fondations ont pay&eacute; le lieu, les frais de connexion et les frais de d&eacute;placement de tous les enseignants qui ont &eacute;t&eacute; accept&eacute;s.&nbsp;</p>',2,NULL,28,false,true),
	 ('Wikimedia community',NULL,'Wikipedia in medicine','Medicine students edit Wikipedia','Wikipedia in medicina','gli studenti di medicina modificano Wikipedia','wikipedia in der Medizin','Medizinstudenten bearbeiten Wikipedia','Wikipedia en médecine','Les étudiants en médecine modifient Wikipedia',NULL,NULL,NULL,'',NULL,NULL,NULL,'Involve students to improve and create Wikipedia articles on medicine.','<p>The project started in 2011 with the School&nbsp;of Medicine in the Aristotle University&nbsp;of Thessaloniki in the context of the elective course Medical Education.&nbsp;</p>

<p>Every year Konstantinos Stampoulis&nbsp;was giving a lecture on Wikipedia and medicinal content in Wikipedia.</p>

<p>The students were given&nbsp;the assignment to create or translate from english (the most usual choice) an article in Greek Wikipedia.&nbsp;</p>

<p>The managers of the project&nbsp;had a precompiled list of articles from english wikipedia, sorted by quality, importance, length and difficulty.&nbsp;</p>

<p>The students were encouraged to create small teams of 2-4, choose an article and each student translate some part of the article and correct parts translated by the rest. In this way the managers of the project&nbsp;managed to make them understand the collaborative nature of Wikipedia and also create much better articles than what they would have if they&nbsp;had asked one article per student. The students&nbsp;had some online assistance from &quot;wiki ambassadors&quot; (experienced users who volunteered) but most of them did not need&nbsp;much of it. Results were graded by examining the onwiki contributions of each individual student/user (not per team).</p>','Coinvolgere gli studenti per migliorare e creare articoli di Wikipedia sulla medicina.','<p>l progetto &egrave; iniziato nel 2011 con la Scuola di Medicina dell&#39;Universit&agrave; Aristotele di Salonicco nel contesto del corso elettivo Medical Education.&nbsp;</p>

<p>Ogni anno Konstantinos Stampoulis teneva una lezione su Wikipedia e sul contenuto medico in Wikipedia.</p>

<p>Agli studenti &egrave; stato dato il compito di creare o tradurre dall&#39;inglese (la scelta pi&ugrave; comune) un articolo in Wikipedia greca.&nbsp;</p>

<p>I responsabili del progetto avevano una lista precompilata di articoli da wikipedia inglese, ordinati per qualit&agrave;, importanza, lunghezza e difficolt&agrave;.&nbsp;</p>

<p>Gli studenti sono stati incoraggiati a creare piccole squadre di 2-4, scegliere un articolo e ogni studente tradurre una parte dell&#39;articolo e correggere le parti tradotte dal resto. In questo modo i responsabili del progetto sono riusciti a far capire loro la natura collaborativa di Wikipedia e anche a creare articoli molto migliori di quelli che avrebbero avuto se avessero chiesto un articolo per studente. Gli studenti hanno avuto un po&#39; di assistenza online da &quot;ambasciatori wiki&quot; (utenti esperti che si sono offerti volontari) ma la maggior parte di loro non ne ha avuto bisogno. I risultati sono stati valutati esaminando i contributi onwiki di ogni singolo studente/utente (non per squadra).</p>

<p>&nbsp;</p>','Beziehen Sie Schüler ein, um Wikipedia-Artikel über Medizin zu verbessern und zu erstellen.','<p>Das Projekt begann 2011 an der medizinischen Fakult&auml;t der Aristoteles-Universit&auml;t Thessaloniki im Rahmen des Wahlfachs Medizinische Ausbildung.&nbsp;</p>

<p>Jedes Jahr hielt Konstantinos Stampoulis eine Vorlesung &uuml;ber Wikipedia und medizinische Inhalte in Wikipedia.</p>

<p>Die Studierenden bekamen die Aufgabe, einen Artikel in der griechischen Wikipedia zu erstellen oder aus dem Englischen zu &uuml;bersetzen (die &uuml;bliche Wahl).&nbsp;</p>

<p>Die Projektleiter hatten eine vorgefertigte Liste von Artikeln aus der englischen Wikipedia, sortiert nach Qualit&auml;t, Wichtigkeit, L&auml;nge und Schwierigkeit.&nbsp;</p>

<p>Die Sch&uuml;lerinnen und Sch&uuml;ler wurden aufgefordert, kleine Teams von 2 bis 4 Personen zu bilden, einen Artikel auszuw&auml;hlen und jeweils einen Teil des Artikels zu &uuml;bersetzen und die von den anderen Sch&uuml;lern &uuml;bersetzten Teile zu korrigieren. Auf diese Weise gelang es den Projektleitern, den Sch&uuml;lerinnen und Sch&uuml;lern den gemeinschaftlichen Charakter von Wikipedia n&auml;her zu bringen, und sie erstellten viel bessere Artikel, als sie es getan h&auml;tten, wenn sie von jedem Sch&uuml;ler einen Artikel verlangt h&auml;tten. Die Sch&uuml;lerinnen und Sch&uuml;ler erhielten etwas Online-Hilfe von &quot;Wiki-Botschaftern&quot; (erfahrene Benutzerinnen und Benutzer, die sich freiwillig gemeldet hatten), aber die meisten von ihnen brauchten nicht viel davon. Die Ergebnisse wurden bewertet, indem die Beitr&auml;ge jedes einzelnen Sch&uuml;lers/Nutzers im Wiki untersucht wurden (nicht pro Team).</p>

<p>&nbsp;</p>','Faites participer les élèves à l''amélioration et à la création d''articles Wikipédia sur la médecine.','<p>Le projet a d&eacute;but&eacute; en 2011 avec la facult&eacute; de m&eacute;decine de l&#39;Universit&eacute; Aristote de Thessalonique dans le cadre du cours facultatif d&#39;&eacute;ducation m&eacute;dicale.&nbsp;</p>

<p>Chaque ann&eacute;e, Konstantinos Stampoulis donnait un cours sur Wikip&eacute;dia et le contenu m&eacute;dical de Wikip&eacute;dia.</p>

<p>Les &eacute;tudiants avaient pour mission de cr&eacute;er ou de traduire de l&#39;anglais (le choix le plus courant) un article dans la Wikip&eacute;dia grecque.&nbsp;</p>

<p>Les responsables du projet disposaient d&#39;une liste pr&eacute;compil&eacute;e d&#39;articles de Wikip&eacute;dia en anglais, class&eacute;s par qualit&eacute;, importance, longueur et difficult&eacute;.&nbsp;</p>

<p>Les &eacute;tudiants ont &eacute;t&eacute; encourag&eacute;s &agrave; cr&eacute;er de petites &eacute;quipes de 2 &agrave; 4 personnes, &agrave; choisir un article et &agrave; faire traduire par chaque &eacute;tudiant une partie de l&#39;article et &agrave; corriger les parties traduites par les autres. De cette mani&egrave;re, les responsables du projet ont r&eacute;ussi &agrave; leur faire comprendre la nature collaborative de Wikip&eacute;dia et &agrave; cr&eacute;er des articles de bien meilleure qualit&eacute; que s&#39;ils avaient demand&eacute; un article par &eacute;tudiant. Les &eacute;tudiants ont b&eacute;n&eacute;fici&eacute; d&#39;une certaine assistance en ligne de la part des &quot;ambassadeurs wiki&quot; (des utilisateurs exp&eacute;riment&eacute;s qui se sont port&eacute;s volontaires), mais la plupart d&#39;entre eux n&#39;en ont pas eu besoin. Les r&eacute;sultats ont &eacute;t&eacute; &eacute;valu&eacute;s en examinant les contributions onwiki de chaque &eacute;tudiant/utilisateur individuel (et non par &eacute;quipe).</p>

<p>Traduit avec www.DeepL.com/Translator (version gratuite)</p>',2,NULL,26,false,true),
	 ('Wikimedia Deutschland',NULL,'Open Science Fellows Program','Open access to research','Programma Open Science Fellows','L''accesso libero alla ricerca','Open-Science-Fellows Programm','Offener Zugang zur Forschung','Programme Open Access Fellows','Le libre accès à la recherche',NULL,NULL,NULL,'',NULL,NULL,NULL,'The program promotes opening up research and teaching in accordance with the principles of open science, a movement that enables researchers and society as a whole to access scientific research findings. The goal is to support scientists in making their own research more accessible.','<p>Over a period of eight months the Fellows are individually advised by mentors who already apply Open Science methods in their research.</p>

<p>In addition to theoretical basics on the topics of Open Knowledge and Open Science, the Fellow Program also shows participants how to apply them in practice.</p>

<p>The program is designed to make the subject of Open Science more visible and to promote it in scientific institutions and communities.</p>

<p>Each Fellow receives a grant of &euro; 3000&thinsp;/&thinsp;&euro; 5000.</p>','Il programma promuove l''apertura della ricerca e dell''insegnamento secondo i principi della scienza aperta, un movimento che permette ai ricercatori e a tutta la società di accedere ai risultati della ricerca scientifica. L''obiettivo è quello di sostenere gli scienziati nel rendere le loro ricerche più accessibili.','<p>Per un periodo di otto mesi i Fellows sono consigliati individualmente da mentori che gi&agrave; applicano metodi di Open Science nella loro ricerca.</p>

<p>Oltre alle basi teoriche sui temi dell&#39;Open Knowledge e dell&#39;Open Science, il Fellow Program mostra ai partecipanti come applicarli nella pratica.</p>

<p>Il programma &egrave; progettato per rendere il tema dell&#39;Open Science pi&ugrave; visibile e per promuoverlo nelle istituzioni e comunit&agrave; scientifiche.</p>

<p>Ogni Fellow riceve una borsa di studio di &euro; 3000 / &euro; 5000.</p>','Das Programm fördert die Öffnung von Forschung und Lehre nach den Prinzipien von Open Science, einer Bewegung, die Forschern und der Gesellschaft insgesamt den Zugang zu wissenschaftlichen Forschungsergebnissen ermöglicht. Ziel ist es, Wissenschaftler dabei zu unterstützen, ihre eigene Forschung besser zugänglich zu machen.','<p>&Uuml;ber einen Zeitraum von acht Monaten werden die Fellows individuell von Mentoren betreut, die bereits Open-Science-Methoden in ihrer Forschung anwenden.</p>

<p>Neben theoretischen Grundlagen zu den Themen Open Knowledge und Open Science zeigt das Fellow-Programm den Teilnehmern auch, wie sie diese in der Praxis anwenden k&ouml;nnen.</p>

<p>Ziel des Programms ist es, das Thema Open Science sichtbarer zu machen und in wissenschaftlichen Einrichtungen und Communities zu f&ouml;rdern.</p>

<p>Jeder Fellow erh&auml;lt ein Stipendium von &euro; 3000 / &euro; 5000.</p>

<p>&nbsp;</p>','Le programme encourage l''ouverture de la recherche et de l''enseignement conformément aux principes de la science ouverte, un mouvement qui permet aux chercheurs et à la société dans son ensemble d''accéder aux résultats de la recherche scientifique. L''objectif est d''aider les scientifiques à rendre leurs propres recherches plus accessibles.','<p>Pendant une p&eacute;riode de huit mois, les boursiers sont conseill&eacute;s individuellement par des mentors qui appliquent d&eacute;j&agrave; les m&eacute;thodes de la science ouverte dans leurs recherches.</p>

<p>En plus des bases th&eacute;oriques sur les th&egrave;mes de la connaissance ouverte et de la science ouverte, le programme Fellow montre &eacute;galement aux participants comment les appliquer en pratique.</p>

<p>Le programme est con&ccedil;u pour rendre le sujet de la science ouverte plus visible et pour le promouvoir dans les institutions et les communaut&eacute;s scientifiques.</p>

<p>Chaque boursier re&ccedil;oit une bourse de 3000 &euro; / 5000 &euro;.</p>',2,NULL,30,false,true),
	 ('Wikimedia Argentina',NULL,'WikiDDHH','Wikimedia project about human rights','WikiDDHH','Progetti Wikimedia sui diritti umani','WikiDDHH','Wikimedia-Projekte zu Menschenrechten','WikiDDHH','Projets Wikimedia sur les droits de l''homme',NULL,NULL,NULL,'',NULL,NULL,NULL,'Since 2016 Wikimedia Argentina has been carrying out the Wiki Human Rights project, which aims to edit content on Wikipedia and Wikimedia projects in order to build memory in digital territories.','<p dir="ltr">In its beginnings, the project started thinking locally, which is why it was named Wiki Lesa - taking up the notion of Lesa Humanidad - proposing the edition, updating and creation of content in the Spanish Wikipedia on the process of reopening the trials for crimes against humanity occurred during the last civil-military dictatorship in Argentina of the 70&#39; and the 80&#39;. This justice process has taken place in Argentina since 2005. From this experience Wikipedia became a digital territory from which it was&nbsp;proposed to think about the present by building memory (haciendo memoria). The project was carried out in coordination with civil society organizations, human rights defenders, journalists, researchers, human rights organizations and survivors.&nbsp;</p>

<p dir="ltr">In 2018, the project was extended to implement it at a regional level, which is why&nbsp;its name was changed to Wiki Human Rights, and the experience was tooked to 7 countries in the region: Chile, Uruguay, Mexico, Venezuela, Colombia, Paraguay and Argentina. In each of these experiences we considered it important to articulate and place the training spaces in the Wikipedia editing process together with the local communities of Wikimedians, institutions and civil society organizations specialized in the subject.</p>','Dal 2016 Wikimedia Argentina porta avanti il progetto Wiki Human Rights, che mira a modificare i contenuti di Wikipedia e dei progetti Wikimedia per costruire la memoria nei territori digitali.','<p>Inizialmente, il progetto era pensato a livello&nbsp;locale, per questo &egrave; stato chiamato Wiki Lesa - riprendendo la nozione di Lesa Humanidad - proponendo l&#39;edizione, l&#39;aggiornamento e la creazione di contenuti nella Wikipedia spagnola sul processo di riapertura dei processi per crimini contro l&#39;umanit&agrave; avvenuti durante l&#39;ultima dittatura civile-militare in Argentina degli anni 70&#39; e 80&#39;. Questo processo giudiziario ha avuto luogo in Argentina dal 2005. Da questa esperienza Wikipedia &egrave; diventata un territorio digitale dal quale si &egrave; proposto di pensare al presente costruendo memoria (haciendo memoria). Il progetto &egrave; stato realizzato in coordinamento con organizzazioni della societ&agrave; civile, difensori dei diritti umani, giornalisti, ricercatori, organizzazioni per i diritti umani e sopravvissuti.&nbsp;</p>

<p>Nel 2018, il progetto &egrave; stato esteso per implementarlo a livello regionale, motivo per cui il suo nome &egrave; stato cambiato in Wiki Human Rights, e l&#39;esperienza &egrave; stata portata in 7 paesi della regione: Cile, Uruguay, Messico, Venezuela, Colombia, Paraguay e Argentina. In ognuna di queste esperienze abbiamo ritenuto importante articolare e collocare gli spazi di formazione nel processo di redazione di Wikipedia insieme alle comunit&agrave; locali di Wikimediani, alle istituzioni e alle organizzazioni della societ&agrave; civile specializzate in materia.</p>','Seit 2016 führt Wikimedia Argentinien das Projekt Wiki Human Rights durch, das darauf abzielt, Inhalte in Wikipedia und Wikimedia-Projekten zu bearbeiten, um die Erinnerung in digitalen Gebieten zu stärken.','<p>In seinen Anf&auml;ngen dachte das Projekt auf lokaler Ebene, weshalb es Wiki Lesa genannt wurde - in Anlehnung an den Begriff Lesa Humanidad - und schlug die Edition, Aktualisierung und Erstellung von Inhalten in der spanischen Wikipedia &uuml;ber den Prozess zur Wiederaufnahme der Verfahren wegen Verbrechen gegen die Menschlichkeit vor, die w&auml;hrend der letzten zivil-milit&auml;rischen Diktatur in Argentinien in den 70er und 80er Jahren stattfanden. Dieser Gerichtsprozess findet in Argentinien seit 2005 statt. Aus dieser Erfahrung heraus wurde Wikipedia zu einem digitalen Territorium, von dem aus vorgeschlagen wurde, &uuml;ber die Gegenwart nachzudenken, indem man Erinnerungen aufbaut (haciendo memoria). Das Projekt wurde in Zusammenarbeit mit Organisationen der Zivilgesellschaft, Menschenrechtsverteidigern, Journalisten, Forschern, Menschenrechtsorganisationen und &Uuml;berlebenden durchgef&uuml;hrt.&nbsp;</p>

<p>Im Jahr 2018 wurde das Projekt erweitert, um es auf regionaler Ebene umzusetzen, weshalb es in Wiki Human Rights umbenannt wurde, und die Erfahrungen wurden in 7 L&auml;nder der Region getragen: Chile, Uruguay, Mexiko, Venezuela, Kolumbien, Paraguay und Argentinien. In jedem dieser L&auml;nder hielten wir es f&uuml;r wichtig, die Schulungsr&auml;ume gemeinsam mit den lokalen Gemeinschaften von Wikimedianern, Institutionen und zivilgesellschaftlichen Organisationen, die auf dieses Thema spezialisiert sind, in den Wikipedia-Bearbeitungsprozess einzubinden.</p>','Depuis 2016, Wikimedia Argentina réalise le projet Wiki Human Rights, qui vise à éditer les contenus de Wikipédia et des projets Wikimedia afin de construire la mémoire dans les territoires numériques.','<p>&Agrave; ses d&eacute;buts, le projet a commenc&eacute; &agrave; penser localement, c&#39;est pourquoi il a &eacute;t&eacute; nomm&eacute; Wiki Lesa - reprenant la notion de Lesa Humanidad - proposant l&#39;&eacute;dition, la mise &agrave; jour et la cr&eacute;ation de contenus dans la Wikip&eacute;dia espagnole sur le processus de r&eacute;ouverture des proc&egrave;s pour crimes contre l&#39;humanit&eacute; survenus pendant la derni&egrave;re dictature civile-militaire en Argentine des ann&eacute;es 70 et 80. Ce processus de justice a lieu en Argentine depuis 2005. A partir de cette exp&eacute;rience, Wikip&eacute;dia est devenu un territoire num&eacute;rique &agrave; partir duquel il a &eacute;t&eacute; propos&eacute; de penser le pr&eacute;sent en construisant la m&eacute;moire (haciendo memoria). Le projet a &eacute;t&eacute; r&eacute;alis&eacute; en coordination avec des organisations de la soci&eacute;t&eacute; civile, des d&eacute;fenseurs des droits humains, des journalistes, des chercheurs, des organisations de d&eacute;fense des droits humains et des survivants.&nbsp;</p>

<p>En 2018, le projet a &eacute;t&eacute; &eacute;tendu pour le mettre en &oelig;uvre au niveau r&eacute;gional, c&#39;est pourquoi son nom a &eacute;t&eacute; chang&eacute; en Wiki Human Rights, et l&#39;exp&eacute;rience a &eacute;t&eacute; port&eacute;e dans 7 pays de la r&eacute;gion : Chili, Uruguay, Mexique, Venezuela, Colombie, Paraguay et Argentine. Dans chacune de ces exp&eacute;riences, nous avons consid&eacute;r&eacute; qu&#39;il &eacute;tait important d&#39;articuler et de placer les espaces de formation dans le processus d&#39;&eacute;dition de Wikipedia avec les communaut&eacute;s locales de Wikim&eacute;diens, les institutions et les organisations de la soci&eacute;t&eacute; civile sp&eacute;cialis&eacute;es dans le sujet.</p>',2,NULL,21,false,true);
INSERT INTO public.sito_project ("by",by_url,title_en,subtitle_en,title_it,subtitle_it,title_de,subtitle_de,title_fr,subtitle_fr,link,date_from,date_to,project_image,image_credits,project_video,video_credits,short_description_en,more_information_en,short_description_it,more_information_it,short_description_de,more_information_de,short_description_fr,more_information_fr,content_type_id,licence_id,my_order,image_in_home,published) VALUES
	 ('Wikimedia Argentina',NULL,'Wikipedia in your university','Training sessions at university.','Wikipedia nella tua università','Sessioni di formazione all''università','Wikipedia an Ihrer Universität','Trainingseinheiten an der Universität','Wikipédia dans votre université','Sessions de formation à l''université',NULL,NULL,NULL,'',NULL,NULL,NULL,'This project develops 3 training sessions (3 days of work) for university students and professors. It offers an intensive session about Wikimedia and its projects, later detail about the edition of content in Wikipedia. Particular interest: creation of projects that can support the research done by the classes that get involved with our program. Aim: encouraging professors and students to use the Wikipedia platform as another space to consolidate debates and content within the academic world.','<p>How is it organized?</p>

<ol>
	<li>Initial space for exchange with the chairs and research teams.<br />
	We get to know the work of each team and the contents/topics they study/research.<br />
	We think together how to implement the project in the specific subject and we define the work times.</li>
	<li>
	<p>Research work and elaboration of the content to be added.<br />
	Each team of teachers and students researches Wikipedia analyzing which articles exist and which are missing on the topic they want to work on. They select the articles to create or improve and work on the search for reliable sources to build the contents.</p>

	<p>From the Education and Human Rights Program, the process of article selection is monitored and various tutorials are provided to the chairs to begin to learn about the editing tools.</p>

	<p>3. Final editing workshop<br />
	In a final meeting with all participants, we held a workshop where we worked on Wikipedia, its operation, the principles of Free Culture and editing tools.</p>

	<p>Finally, each group uploads the elaborated contents to the encyclopedia.</p>
	</li>
</ol>

<p>For more information look at the following websites:</p>

<p>https://wikimedia.org.ar/wikipediaenlauniversidad/</p>

<p>https://revistas.ucu.edu.uy/index.php/paginasdeeducacion/article/view/1552/1536</p>','3 sessioni di formazione (3 giorni lavorativi) per studenti universitari e insegnanti. Sessione intensiva su Wikimedia e i suoi progetti, seguita da dettagli sulla redazione di contenuti in Wikipedia. Interesse speciale: creare progetti che possano sostenere la ricerca fatta dalle classi coinvolte nel nostro programma. Obiettivo: incoraggiare professori e studenti a utilizzare la piattaforma Wikipedia come un altro spazio per consolidare il dibattito e i contenuti all''interno del mondo accademico.','<p>Come &egrave; organizzato?</p>

<ol>
	<li>Spazio iniziale di scambio con i presidenti e i team di ricerca.</li>
</ol>

<ul>
	<li>Conosciamo il lavoro di ogni team e i contenuti/argomenti che studiano/ricercano.</li>
	<li>Pensiamo insieme a come realizzare il progetto nella materia specifica e definiamo i tempi di lavoro.</li>
</ul>

<p>&nbsp; &nbsp; &nbsp;2.&nbsp;Lavoro di ricerca ed elaborazione del contenuto da aggiungere.</p>

<ul>
	<li>Ogni team di insegnanti e studenti fa una ricerca su Wikipedia analizzando quali articoli esistono e quali mancano sull&#39;argomento su cui vogliono lavorare. Selezionano gli articoli da creare o migliorare e lavorano alla ricerca di fonti affidabili per costruire i contenuti.</li>
	<li>Dal Programma di Educazione e Diritti Umani, il processo di selezione degli articoli &egrave; monitorato e vari tutorial sono forniti ai presidenti per iniziare a conoscere gli strumenti di editing.</li>
</ul>

<p>&nbsp; &nbsp; &nbsp;3. Workshop finale di editing</p>

<ul>
	<li>In un incontro finale con tutti i partecipanti, abbiamo tenuto un workshop in cui abbiamo lavorato su Wikipedia, il suo funzionamento, i principi della Cultura Libera e gli strumenti di editing.</li>
	<li>Infine, ogni gruppo carica i contenuti elaborati sull&#39;enciclopedia.</li>
</ul>

<p>Per maggiori informazioni guardare i seguenti siti web:</p>

<p>https://wikimedia.org.ar/wikipediaenlauniversidad/</p>

<p>https://revistas.ucu.edu.uy/index.php/paginasdeeducacion/article/view/1552/1536</p>','3 Trainingseinheiten (3 Arbeitstage) für Universitätsstudenten und Lehrer. Intensive Sitzung über Wikimedia und seine Projekte, gefolgt von Details zur Bearbeitung von Inhalten in Wikipedia. Besonderes Interesse: Erstellen von Projekten, die die Forschung der an unserem Programm beteiligten Klassen unterstützen können. Ziel: Professoren und Studenten zu ermutigen, die Wikipedia-Plattform als weiteren Raum zu nutzen, um Diskussionen und Inhalte innerhalb der akademischen Welt zu konsolidieren.','<p>Wie ist sie organisiert?</p>

<ol>
	<li>Erster Raum f&uuml;r den Austausch mit den Lehrst&uuml;hlen und Forschungsteams.</li>
</ol>

<ul>
	<li>Wir lernen die Arbeit jedes Teams und die Inhalte/Themen kennen, die sie untersuchen/erforschen.</li>
	<li>Wir &uuml;berlegen gemeinsam, wie wir das Projekt in dem jeweiligen Fachgebiet umsetzen k&ouml;nnen und legen die Arbeitszeiten fest.</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; 2.&nbsp;Forschungsarbeit und Ausarbeitung der hinzuzuf&uuml;genden Inhalte.</p>

<ul>
	<li>Jedes Team aus Lehrern und Sch&uuml;lern recherchiert in Wikipedia und analysiert, welche Artikel zu dem Thema, an dem sie arbeiten wollen, existieren und welche fehlen. Sie w&auml;hlen die Artikel aus, die sie erstellen oder verbessern wollen, und suchen nach zuverl&auml;ssigen Quellen, um die Inhalte zu erstellen.</li>
	<li>Das Programm f&uuml;r Bildung und Menschenrechte &uuml;berwacht den Prozess der Artikelauswahl und stellt den Lehrst&uuml;hlen verschiedene Tutorien zur Verf&uuml;gung, um sie mit den Bearbeitungswerkzeugen vertraut zu machen.</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; 3. Workshop zur Endredaktion</p>

<ul>
	<li>In einem Abschlusstreffen mit allen Teilnehmern haben wir einen Workshop abgehalten, in dem wir uns mit Wikipedia, seiner Funktionsweise, den Grunds&auml;tzen der freien Kultur und den Bearbeitungswerkzeugen besch&auml;ftigt haben.</li>
	<li>Schlie&szlig;lich l&auml;dt jede Gruppe die erarbeiteten Inhalte in die Enzyklop&auml;die hoch.</li>
</ul>

<p>Weitere Informationen finden Sie auf den folgenden Websites:</p>

<p>https://wikimedia.org.ar/wikipediaenlauniversidad/</p>

<p>https://revistas.ucu.edu.uy/index.php/paginasdeeducacion/article/view/1552/1536</p>

<p>&nbsp;</p>','Un projet qui amène Wikipédia dans les universités.3 sessions de formation (3 jours de travail) pour des étudiants et des professeurs d''université. Session intensive sur Wikimedia et ses projets, puis détail sur l''édition de contenu dans Wikipedia. Intérêt particulier : création de projets qui peuvent soutenir la recherche effectuée par les classes qui s''impliquent dans notre programme. Objectif : encourager les professeurs et les étudiants à utiliser la plateforme Wikipédia comme un autre espace pour consolider les débats et les contenus au sein du monde universitaire.','<p>Comment s&#39;organise-t-elle ?</p>

<ol>
	<li>Un premier espace d&#39;&eacute;change avec les pr&eacute;sidents et les &eacute;quipes de recherche.</li>
</ol>

<ul>
	<li>Nous apprenons &agrave; conna&icirc;tre le travail de chaque &eacute;quipe et les contenus/sujets qu&#39;elle &eacute;tudie/recherche.</li>
	<li>Nous r&eacute;fl&eacute;chissons ensemble &agrave; la mani&egrave;re de mettre en &oelig;uvre le projet dans la mati&egrave;re sp&eacute;cifique et nous d&eacute;finissons les temps de travail.</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; 2. Travail de recherche et &eacute;laboration du contenu &agrave; ajouter.</p>

<ul>
	<li>Chaque &eacute;quipe d&#39;enseignants et d&#39;&eacute;tudiants effectue des recherches sur Wikip&eacute;dia en analysant les articles existants et ceux qui manquent sur le sujet sur lequel ils veulent travailler. Ils s&eacute;lectionnent les articles &agrave; cr&eacute;er ou &agrave; am&eacute;liorer et travaillent &agrave; la recherche de sources fiables pour construire les contenus.</li>
	<li>Depuis le programme d&#39;&eacute;ducation et de droits de l&#39;homme, le processus de s&eacute;lection des articles est suivi et divers tutoriels sont fournis aux pr&eacute;sidents pour qu&#39;ils commencent &agrave; se familiariser avec les outils d&#39;&eacute;dition.</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; 3. Atelier d&#39;&eacute;dition finale</p>

<ul>
	<li>Lors d&#39;une r&eacute;union finale avec tous les participants, nous avons organis&eacute; un atelier o&ugrave; nous avons travaill&eacute; sur Wikip&eacute;dia, son fonctionnement, les principes de la culture libre et les outils d&#39;&eacute;dition.</li>
	<li>Enfin, chaque groupe t&eacute;l&eacute;charge les contenus &eacute;labor&eacute;s sur l&#39;encyclop&eacute;die.</li>
</ul>

<p>Pour plus d&#39;informations, consultez les sites web suivants :</p>

<p>https://wikimedia.org.ar/wikipediaenlauniversidad/</p>

<p>https://revistas.ucu.edu.uy/index.php/paginasdeeducacion/article/view/1552/1536</p>',2,NULL,27,false,true),
	 ('Wikimedia Foundation',NULL,'Reading Wikipedia in the Classroom','Bringing Wikipedia into the schools','Reading Wikipedia in the Classroom','Portare Wikipedia nelle scuole','Reading Wikipedia in the Classroom','Wikipedia in die Schulen bringen','Reading Wikipedia in the Classroom','Introduire Wikipedia dans les écoles',NULL,NULL,NULL,'',NULL,NULL,NULL,'Last year, the Education team at the Wikimedia Foundation launched the Reading Wikipedia in the Classroom pilot in 3 pilot countries: Bolivia, Morocco, and the Philippines. They worked with local coordinators from the Wikimedia affiliates in each country to provide an online professional development opportunity to close to 1000 secondary school teachers with a localized curriculum that aligns Wikipedia with UNESCO’s Media and Information Literacy framework.','<p>This project will connect teachers to the communities and practices behind Wikipedia.</p>

<p>It will help both educators and students develop vital information literacy skills for the 21st century: understanding how information is produced, how to evaluate the integrity of knowledge, and how to understand biases and knowledge gaps in the information they consume.</p>

<p>To achieve the project&#39;s objectives, schools will benefit from:</p>

<ul>
	<li>Localized materials for teachers on how to use Wikipedia and develop critical reading skills.</li>
	<li>Teacher development training for selected teachers in the use of the kit.</li>
	<li>Ongoing support from local coordinators for teachers implementing these resources and practices in their classrooms.</li>
	<li>Professional development recognition for participating teachers and schools.</li>
	<li>Integration into Wikipedia&#39;s international network of education leaders.</li>
</ul>

<p>For more information look at the follwoing website:</p>

<p>https://outreach.wikimedia.org/wiki/Education/About/Education_Team/Reading_Wikipedia_in_the_Classroom/es</p>

<p>https://www.youtube.com/watch?v=MmSAsvf6j7w</p>','L''anno scorso, il team dell''istruzione della Wikimedia Foundation ha lanciato il progetto pilota Reading Wikipedia in the Classroom in 3 paesi pilota: Bolivia, Marocco e Filippine. Hanno lavorato con i coordinatori locali degli affiliati di Wikimedia in ogni paese per fornire un''opportunità di sviluppo professionale online a quasi 1000 insegnanti delle scuole secondarie con un curriculum localizzato che allinea Wikipedia con il quadro dell''alfabetizzazione mediatica e informativa dell''UNESCO.','<p>Questo progetto collegher&agrave; gli insegnanti alle comunit&agrave; e alle pratiche dietro Wikipedia.</p>

<p>Aiuter&agrave; sia gli educatori che gli studenti a sviluppare competenze vitali di alfabetizzazione informativa per il 21&deg; secolo: capire come l&#39;informazione viene prodotta, come valutare l&#39;integrit&agrave; della conoscenza e come capire i pregiudizi e le lacune di conoscenza nelle informazioni che consumano.</p>

<p>Per raggiungere gli obiettivi del progetto, le scuole beneficeranno di:</p>

<ul>
	<li>Materiali localizzati per gli insegnanti su come usare Wikipedia e sviluppare capacit&agrave; di lettura critica.</li>
	<li>Formazione per lo sviluppo degli insegnanti selezionati nell&#39;uso del kit.</li>
	<li>Sostegno continuo da parte dei coordinatori locali per gli insegnanti che implementano queste risorse e pratiche nelle loro classi.</li>
	<li>Riconoscimento dello sviluppo professionale per gli insegnanti e le scuole partecipanti.</li>
	<li>Integrazione nella rete internazionale di leader educativi di Wikipedia.</li>
</ul>

<p>Per maggiori informazioni consultate&nbsp;il sito web seguente:</p>

<p>https://outreach.wikimedia.org/wiki/Education/About/Education_Team/Reading_Wikipedia_in_the_Classroom/es</p>

<p>https://www.youtube.com/watch?v=MmSAsvf6j7w</p>','Letztes Jahr startete das Bildungsteam der Wikimedia Foundation das Pilotprojekt "Reading Wikipedia in the Classroom" in 3 Pilotländern: Bolivien, Marokko und die Philippinen. Sie arbeiteten mit lokalen Koordinatoren der Wikimedia-Mitgliedsorganisationen in jedem Land zusammen, um fast 1000 Sekundarschullehrern eine Online-Fortbildungsmöglichkeit mit einem lokalisierten Lehrplan zu bieten, der Wikipedia mit dem Rahmenwerk der UNESCO für Medien- und Informationskompetenz in Einklang bringt.','<p>Dieses Projekt wird Lehrer mit den Gemeinschaften und Praktiken hinter Wikipedia verbinden.</p>

<p>Es wird sowohl P&auml;dagogen als auch Sch&uuml;lern dabei helfen, wichtige Informationskompetenzen f&uuml;r das 21. Jahrhundert zu entwickeln: zu verstehen, wie Informationen produziert werden, wie man die Integrit&auml;t von Wissen bewertet und wie man Vorurteile und Wissensl&uuml;cken in den von ihnen konsumierten Informationen versteht.</p>

<p>Um die Ziele des Projekts zu erreichen, werden die Schulen von folgenden Ma&szlig;nahmen profitieren:</p>

<ul>
	<li>Lokalisierte Materialien f&uuml;r Lehrer zur Nutzung von Wikipedia und zur Entwicklung kritischer Lesef&auml;higkeiten.</li>
	<li>Fortbildung ausgew&auml;hlter Lehrkr&auml;fte f&uuml;r die Nutzung des Kits.</li>
	<li>Kontinuierliche Unterst&uuml;tzung durch lokale Koordinatoren f&uuml;r Lehrer, die diese Ressourcen und Praktiken in ihren Klassenzimmern umsetzen.</li>
	<li>Anerkennung der beruflichen Entwicklung f&uuml;r teilnehmende Lehrer und Schulen.</li>
	<li>Integration in Wikipedias internationales Netzwerk von Bildungsexperten.</li>
</ul>

<p>Weitere Informationen finden Sie auf der folgenden Website:</p>

<p>https://outreach.wikimedia.org/wiki/Education/About/Education_Team/Reading_Wikipedia_in_the_Classroom/es</p>

<p>https://www.youtube.com/watch?v=MmSAsvf6j7w</p>','L''année dernière, l''équipe Éducation de la Wikimedia Foundation a lancé le projet pilote Reading Wikipedia in the Classroom dans 3 pays pilotes : la Bolivie, le Maroc et les Philippines. Elle a travaillé avec les coordinateurs locaux des filiales de Wikimedia dans chaque pays pour offrir une opportunité de développement professionnel en ligne à près de 1000 enseignants du secondaire avec un programme localisé qui aligne Wikipédia sur le cadre de l''éducation aux médias et à l''information de l''UNESCO.e.','<p>Ce projet mettra les enseignants en contact avec les communaut&eacute;s et les pratiques qui se cachent derri&egrave;re Wikip&eacute;dia.</p>

<p>Il aidera les enseignants et les &eacute;l&egrave;ves &agrave; d&eacute;velopper des comp&eacute;tences essentielles en mati&egrave;re de ma&icirc;trise de l&#39;information pour le 21e si&egrave;cle : comprendre comment l&#39;information est produite, comment &eacute;valuer l&#39;int&eacute;grit&eacute; des connaissances, et comment comprendre les biais et les lacunes dans les informations qu&#39;ils consomment.</p>

<p>Pour atteindre les objectifs du projet, les &eacute;coles b&eacute;n&eacute;ficieront de :</p>

<ul>
	<li>De mat&eacute;riel localis&eacute; pour les enseignants sur la fa&ccedil;on d&#39;utiliser Wikip&eacute;dia et de d&eacute;velopper des comp&eacute;tences de lecture critique.</li>
	<li>Une formation pour certains enseignants sur l&#39;utilisation du kit.</li>
	<li>Un soutien continu de la part des coordinateurs locaux pour les enseignants qui mettent en &oelig;uvre ces ressources et pratiques dans leurs classes.</li>
	<li>Reconnaissance du d&eacute;veloppement professionnel pour les enseignants et les &eacute;coles participants.</li>
	<li>Int&eacute;gration dans le r&eacute;seau international de responsables de l&#39;&eacute;ducation de Wikip&eacute;dia.</li>
</ul>

<p>Pour plus d&#39;informations, consultez le site web suivant :</p>

<p>https://outreach.wikimedia.org/wiki/Education/About/Education_Team/Reading_Wikipedia_in_the_Classroom/es</p>

<p>https://www.youtube.com/watch?v=MmSAsvf6j7w</p>',2,NULL,23,false,true);