# Review minutes for Sprint 15 - (meeting date: 2015-11-06)

## Members present
* Brylie Oxley
* Ville Jyrkkä
* Damir Mustafin
* Illya Nizyev
* Taija Björklund

## Illya
### #74 Custom branding
* Can now update logo
* Use Admin LTE themes as branding options
  * Currently not working
    * Admin LTE package difficulties
  * Will continue next sprint
  
### ApiOps meetup page
* Used Meteor platform example with modifications

### Settings page
* Waiting on refactor of brylie:meteor-api-umbrella
* Suggests moving all settings to same page (with navigation menu)

## Brylie
### #519 API Rating
* PR is open
* Implemented 4 star rating system
  * Users need to 'lean' one way or the other
  * No 'meh' ratings
* Aggregated rating show when user has no rating
  * Also shows aggregate rating count as badge
* User rating shows when available
* May need to be refactored to remove duplicate code
* Uses jQuery Rate It widget
* May need to add sorting capabilities later
  * Users may want to sort by highest rating, for example
  
## Ville
### #566 default response header field
* Added field(s) as separate schemas
* Added fields to AutoForm

### Merged PRs, familiarization with code
Ville also focused on learning the code base. He helped with PRs.


## Damir
### #466 copy API key to clipboard
* Added Clipboard.js to project
* Wrote template logic to
  * insert copy button
  * get api key from DOM
  * save API key to clipboard
  
### #566 Download logs via CSV
* Added button to dashboard
* Template logic to
  * get analytics from charts
  * parse to CSV
  * open save dialogue on user computer
* Currently downloads filtered results
* Plan for additional feature to download all logs, including selecting fields
  
### #517 REST calls through API Umbrella
* Deferred to next sprint



