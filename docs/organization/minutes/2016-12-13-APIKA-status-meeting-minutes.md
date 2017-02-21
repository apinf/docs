# APIKA weekly meeting 2016-12-13

## Participants
- Jarkko Moilanen, APIKA product owner
- Taija Björklund, APInf product owner

## Open issues
### Lifecycle status
- Proposa for f lifecycle statuses: design, development, testing, production, deprecated. Jarkko's comment: OK
- How to add the status and to modify it?
  - Original proposal: Adding the status should not be mandatory. Lifecycle is not included in the Add API form.
    There is an undefined status shown for owners and admins on the API profile page until they select a lifecycle status. 
    For any other users, the lifecycle status is not shown at all when not set. When a lifecycle has been selected, it is visible for all users.
  - Proposal modified based on discussion: Adding the status should not be mandatory. Lifecycle is not included in the Add API form.
    There is an undefined status shown for owners and admins on the API profile page until they select a lifecycle status. 
    For any other users, *undefined/unknown is shown until lifecycle is set*. When a lifecycle has been selected, it is visible for all users.
    
### Organization contact person
- Proposal 1: free text: name, phone number or email 
- Proposal 2: ability to select one of the organization managers plus add free text for contact info, e.g. phone number 
- Suggestion by Jarkko: Extended profile. Profile should also have privacy setting for contact information like phone number and email. 
  Whatever has been entered is shown.

### OAuth
- two diagrams available based on initialresearch : https://github.com/apinf/platform/issues/1972, https://github.com/Digipalvelutehdas/APIKA/issues/27
- Comment from Jarkko: Diagram for issue https://github.com/Digipalvelutehdas/APIKA/issues/27 allows more flexibility, but both of the options are acceptable for APIKA

## Actions
- AP Taija: Write a blog post about what has happened in APIKA so far.
