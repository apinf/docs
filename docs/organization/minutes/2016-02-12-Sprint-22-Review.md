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

## Damir (via email)

- #744 (automated testing) Since we are moving from "Velocity" to "Intern" as a testing solution for Apinf, there are some issues that pop up during the migration process. At the same time it took some time to do a research about Intern itself. Still working on this issue with Brylie's help.
- #785 (data table header i18n) This issue required significant refactoring of the dashboard code. (Why this is happening is noted in the comments of that issue on GitHub (https://github.com/apinf/api-umbrella-dashboard/issues/785)).
Having some progress in it. Dashboard code is refactored and deciding how to update data table headers is left.

-⁠ #800 (Swagger UI Base URL) Resolved & closed.

-⁠ #815 (Usage instructions fix) Resolved, closed & merged-⁠ #816 (Define date format in setting & user locale) Created  PR #872.
