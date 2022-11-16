

# Proposed Ontology

This folder is dedicated to everything that involved ontological engineering, modelling the ontology that is the OpenEdu platform. This folder consists of two files:
- `open_edu-b-ontology.owl`: This is the ontology file, wherein can be found the entire ontology, written in OWL. 
- `ontology_image.svg`: This is a visualization of the ontology, done using WebOWL (see below). 
- `README.md`: This file. 

## Software Used

### Webprotégé
To create our ontology, we have used Protégé, in particular WebProtégé, a web based implementation of Protégé. This allowed us to work on the ontology in a distributative manner, along with automatic backups of our data, to ensure safety of use. Protégé is an application that uses a SHOIN description logic, which was chosen not for the features of SHOIN, but for ease of use, as well as cost. It additonally features a small visualizer for any given object, which was useful to us for its elegance and simplicity, which was used to edit the ontology and in particular, to present our pitch in a user friendly way. 

### WebOWL
To visualize the ontology in a more broad way, we have used WebOWL [website](http://vowl.visualdataweb.org/webvowl.html), version 2. This allowed us create full visualizations of our ontology and assist us with recognizing where we had gaps, and what needed improvement.

On last attempt to run the application, version 2 is not working in the browser. To solve this, we have downloaded the application as a Docker conatiner, and ran it locally. Details to this process can be found in [the ticket](https://github.com/WomenPlusPlus/deploy-impact-22-openedu-b/issues/68). 

## Development Process

Development began from modelling the fields that were present in the intial Django form that the team was given. From this skeleton, we added things and properties that tied them together. Once conversations began with the Product Owner, UI developer and Backend developer, the ontology went through a big rework so that it is easily readable to newcomers.

## Object Details

## OpenEdu Platform
The *OpenEdu Platform* is a singleton object, that refers to the Wikimedia universe. In particular, it contains many OpenEdu Content objects. 

### OpenEdu Content
An *OpenEdu Content* object refers to any one WikiMedia project, that can be found on the [OpenEdu homepage](https://openedu.ch/en/). This means the images, text, title, links and the content of the project is included in this object. _Wiki Loves Monuements_ is an example of an OpenEdu Content object.

### Content Record
A *Content Record* object is any one object that is included in the OpenEdu Content object. For example, Wikipedia includes many different Content Records, which would be its articles.

### 