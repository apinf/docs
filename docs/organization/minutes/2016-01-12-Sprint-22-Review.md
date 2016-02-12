# Review minutes for Sprint 22: 2016-02-12

## Members present

* Taija Björklund
* Vesa Härkönen
* Illya Nizyev
* Ville Jyrkkä
* Brylie Christopher Oxley


## Illya
- #813 - Mixed content over SSL
  - found external content references
  - changed to HTTPS
  - Opened Swagger HTTP  issue
  - Closed related issue #791
  
- #737 - concatenated i18n strings
  - merged separated strings to single string
  - made sure each separate string was gramatically complete, for ease-of-translation
  - removed metadata from translation strings, such as HTML markup
  - determined how to allow HTML markup in translation strings, if needed
  
- #809 - add Meteor DocHead
  - Added DocHead plugin
  - Set front page title from `onCreated` callback
  - can re-use `onCreated` recipe on other pages
