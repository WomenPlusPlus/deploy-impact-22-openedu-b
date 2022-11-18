# Deploy(impact) OpenEdu B

This is the repo of the OpenEdu B Team submitted as part of the deploy(impact) 2022 edition sponsored by women++.


## About

### Challenge

The initial challenge was defined as: 

>create a structure to describe the metadata of content found on [OpenEdu.ch](https://openedu.ch/en/) and research/implement ways to discover content that has been published (crawlers, moderation)

### Requirements

Talking to the challenge-setter, we further specified key requirements: 
* Limited to CC-by-SA license
* Focus on content already hosted in the Wiki Universe
* Use links to refer to existing content instead of uploading material
* Avoiding duplication is not key. 
* Finding relevant content is important (as even Wiki staff is often unaware)

We identfied the main users as content creator, moderator, content searcher, and admin.

### Solution

Based on these insights, we built our solution with the following key elements: 

* **Ontology** which structures the existing data in classes and relationships
* Better **user experience** by simplifying forms and flows, and suggesting features like Wiki Login, moderation interface, and dashboards.
* **Automation** (based on NLP) to reduce the work of the content uploader and moderator, and identify records with related content
* **Crawlers and scrapers** to identify relevant content on Wikimedia & other Wiki* sites
* A robust, scalable **architecture** using Azure, dockers & containers, and microservices.


### Protoypes

[Figma mockup](https://www.figma.com/proto/HEK15WFpaaacBCHUGPL4ak/OpenEdu-http-to-figma?page-id=15[…]2C263%2C0.16&scaling=min-zoom&starting-point-node-id=15%3A1307): video & documentation is stored under docs/ux-ui

[Demo website](http://4.231.57.204:8089/): to show working integration of backend, crawlers/scrapers, data, and NLP results (for related content)


## Structure of the Repo

The folders are separated into 3 folders:

- `src`: Location of all code, along with any parsable files 
- `docs`: Location of all documentation regarding the project
- `test`: Any test files that we have produced. 

These three folders are then sub-divided into different modules, which include (depending on the presence of the relevant files):
* `backend`: architecture, incl. dockers, containers, microservices
* `data-science`: ontology, NLP code
* `frontend`: demo website (linked above)
* `presentation`: final presentation of 19 Nov 2022 incl. video
*  `ux-ui`: user journeys, mockups, Figma website


## Contributors
- Andrina Beuggart: Product Owner
- Michal Burgunder: Data Scientist (tech lead, ontology)
- Elena Kameneva: UX/UI Designer
- Noëline Lepais: Data Scientist (NLP)
- Sofia Strukova: Data Scientist (ontology)
- Ceylan Thompson: Scrum Master
- Mascha Tikhomirova: Backend
- Maria Giakoumelou: Team Satellite

