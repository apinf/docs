# Review minutes for Sprint 17: 2015-12-04

## Members present
* Brylie Oxley
* Illya Nizyev
* Ville Jyrkkä
* Taija Björklund
* Vesa Härkönen

## Brylie
### #661 Add method for fetching pending configuration changes from API Umbrella
* Done and merged

### #649 Implement displaying API name in Swagger Viewer doc select
* Done and merged
* Partly implemented in #517 by Damir
* The major challenge was linking the Swagger document and the API backend, if the Swagger document 
gets added at the same time when the API backend is being added, i.e. the backend does not exist yet.

### #537 Admin API integration
* Repository meteor-api-umbrella moved to Apinf Github organisation
* Repository also integrated to the Waffle board.
* Completed.

### #628 Re-design adding new API UI
* In progress
* Brylie has found an autoform wizard that will be used for this task.
* The wizard or quickstart will only contain the mandatory fields from Add API backend and documentation.
* For the non-mandatory fields, used needs to use the form, e.g. Edit API backend.
* Plan is to have one schema for each step.

## Illya
### #327 Create a settings page for Apinf configuration options
* PR created, still work in progress.
* Now it is possible to start the application with or without settings.json file
* If the application is started with the settings.json file, the fields are autofilled.

### #670 Deploy the 0.2.0 alpha 2 release
* Error in deployment because of JsonRoutes
* New issue created: #683 Fix the JsonRoutes error 

### #624 Design link to API documentation
* Wireframe included in the issue, Apinf designers team should review.

### #74 Create a form for choosing basic brand elements, for example, colors and logo
* Ongoing
* Illya has founf a way to change AdminLTE skins, but it changes the class, but does not change the actual skin. 
* [Error](https://github.com/meteor-factory/meteor-admin-lte/issues/18) posted to AdminLTE.
* Brylie suggested trying to include AdminLTE CSS files to Public.
* To be finished before Sprint 18 planning.

## Damir
### #517: Use API Umbrella for REST calls made through Swagger UI
* Done and merged.
* Custom proxy for Swagger Document.
* The major challenge in this task was not being able to create a working meteor package for Swagger.
Because of this, it is necessary to keep  using iFrame as a current window to Swagger UI.
* Decided to move from FS collection as a file store to a pure MongoDB collection. 
So that swagger documents are stored without any schema. 
This also allows us to easily modify parameters for 'host' & 'basePath' on the fly and without adding 
changes to the original file.

### #665: Refactor elastic-rest package for Meteor
* PR under review.
* Refer to [https://github.com/frenchbread/meteor-elastic-rest](https://github.com/frenchbread/meteor-elastic-rest)
* With addition to refactoring and error handling, ElasticRest class now accepts two argument.
First argument is an object that takes configuration e.g. host. 
Second argument is an object that takes query parameters. (See README file for elastic-rest). 
Also added changes to meteor methods at Apinf related to package modifications. 
* To be considered: moving the repository to Apinf Github organization

## Laura
### #578 Invalid redirects to Privacy policy and Terms of use
* Laura has checked a few privacy policies and also the Sampo privacy policy. Needs review from remaining team.

## Taija
### #597 Presentation material for Apika info session
* Presentation prepared, reviewed by other team members and given in APIKA info session.


