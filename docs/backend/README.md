# OpenEDU-b Backend

The backend of the project is built in a form of several microservices running together within a docker-compose environment 
(should be replaced with Kubernetes for production).
Docker-compose also contains several standart packages such as postgres and elasticsearch, we highly recommend switch to
fully-managed versions of them in case the whole infrastructure will be located in the commertial cloud (e.g. Azure)

Architecture overview:

![architecture](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/blob/main/docs/backend/arc.png?raw=true)

More detailed architecture sketches can be found [here](https://docs.google.com/presentation/d/1CGnFI20MGYqmDS8LOK22kPZibg2cCyxN/edit?usp=sharing&ouid=116107646250723740329&rtpof=true&sd=true)


- [/src/backend](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/backend): has all code. 
It has individual folders corresponding to separate microservices. 
Some microservices are just made for one time run, but can be extendet to be triggered, 
for example by Queing Services (RabbitMQ, Pub/Sub etc.) or by cron-jobs:
	- [pg_to_es](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/backend/pg_to_es) - a service
	which moves data from postgres db to elasticsearch. Also creates documents.
	- [es_search_service](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/backend/es_search_service) - an
	API service which allows easy search in elastic index.
	- [gs_to_pg](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/backend/gs_to_pg) - service to get data
	from google sheets to postgres. Was used to collect manually collected data.
	- [internet_to_pg](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/backend/internet_to_pg) - scraper,
	collected data from some predefined websites (wiki techblog and wikisearch).
	- [es_to_pg_with_nlp](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/backend/es_to_pg_with_nlp) - the service that 
	processes crawled data in elastic and synchronizes it with pg. Processing includes some basic nlp - text cleaning from html leftovers,
	summarization and topic search.
	- [owl_reader](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/backend/owl_reader) - some tests with working with
	ontology files. Was supposed to become also an API service enabling communication with the ontology of OntoDB
	- [site_emulation_service](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/frontend/site_emulation_service) - 
	small service that emulates user working with the openedu website. It has a landing page, moderator form with the projects suggested
	based on our scrape/crwal/manual data search attempts + auto-generated content. Search page shows search results from elastic, each result can be
	clicked and suggestions based on NLP model are shown. Demo 
	[video](https://drive.google.com/file/d/1FvMHeAxftxJLcKpqUr3Zmo8cd7flXIas/view?usp=sharing).


- [/dev_ops](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/dev_ops): docker-compose file.
It can be run anywhere and should start the basic infrastructure of our project allowing all the services to be tested or some are just
sserving after containers are up.

# Usage

To run tests simply run `docker-compose up -d` from the [/dev_ops](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/tree/main/src/dev_ops) folder.
One may need a volume for elasticsearch, but docker will help to create it.

For now to run the crawler, one needs to get into the container and trigger `./nutch_sourse/run.sh` inside of it. 
`seed.txt` is adjustable seeding point for the crawler to start. 
For the future all that can be automated with a cron-job, for example.
