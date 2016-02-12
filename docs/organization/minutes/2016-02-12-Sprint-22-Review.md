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

## Brylie

- #802 - Metadata i18n
- #774 - merge branding files into single collection
  - will be continued
  - trying to add migration
  - otherwise, feature is completed
- #764, #779, and #868 - internationalization
  - added i18n strings to metadata template, form, and Add API Wizard 

## Ville

- #669 - API Umbrella 0.11 upgrade
  - successfully upgraded on sandbox
  - waiting for access to production server
- #676 - dashboard filter improvements
  - added semantic IDs to filter fields
- #850 - Add click event to add API Key when Swagger UI renders
  - ensure that Swagger UI uses API Key for API calls
- #836 - Update nightly configurations for deployment
- #830 - Add navigation capabilities to Add API Wizard
- #733 - Add help texts to Add API Wizard
- #823 - Add 2016 to filter dropdown menu
