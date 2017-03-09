2015-09-25 - Sprint 12 Review Meeting
===================


### Present:
[Brylie Oxley](https://www.openhub.net/accounts/brylie)

[Illya Nizyev](https://github.com/apinf/docs/blob/master/ep/profile/w4lbdyiXvgi)

[Taija Björklund](https://github.com/apinf/docs/blob/master/ep/profile/qMJYdtOf8Ww)



Illya Nizyev
-------------

* #462 Check Host section in Add API backend form
  * Closed. Swapped front end and back-end fields to match with API Umbrella
* #454 Create screen captures for launch presentation
  * Closed.
* #425 Move all non-required fields to hidden section on Add API Backend form
  * Documentation related items moved to a collapsible section.
*  #423 Registration confirmation email contains wrong domain name
  * Email changed from apinf.com to apinf.io.
* Also fixed an issue with apinf.io certificate. Now the site should be shown on all browsers without a certificate warning.
* #427 Add or edit help text for the fields of Add API Backend form
  * PR created, has a WIP tag. The placeholder (question mark) for help texts is there, but the texts should be defined with the help of the rest of the team.
* # 428 Add or edit help text for the fields of Add API Backend form
  * Currently the validation message explains what regex is checking for. PR available.
* #426 Add user-confirmation on success when submitting Add API Backend form
  * In progress. Re-direct still needs to be implemented, otherwise this is already implemented. User confirmation is using SAlert package, which could be considered for other user notifications. PR to be created later.
* #431 Add inline help to documentation link and documentation upload fields on Add API Backend form
  * Actual help text to be created, placeholder added. (see issue #427).

Brylie Oxley
-------------

* #460 Plan workshop outline and topics
  * Workshop planned and held at the MindTrek 2015 event.
*  # 457 Clean up API catalog
  * APIs added for testing purposes have been removed from the API catalog. To be closed.
* [Community portal](community.apinf.io) has been created and organized into categories. All team members should register there. We also need to start creating content and take care of search engine optimization / discoverability.
* 2 PR's created for API Umbrella, resolved together with API Umbrella lead developer Nick Muerdter
  * #179 Add community link to API Umbrella
  * #178 Basic Dockerfile from install instructions

Taija Björklund
-------------

* #398 Create launch presentation
  * Completed. Presentation still needs to be added to outreach material.
