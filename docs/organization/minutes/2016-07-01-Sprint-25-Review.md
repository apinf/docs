# 2016-07-01 Meeting minutes: Sprint 25 review

## Present:
- Brylie Oxley
- Taija Björklund
- Illya Nizyev
- Ville Jyrkkä
- Damir Mustafin
- Nazia Hasan
- Vesa Härkönen
- Sandya Cheruku

### Brylie
- Done 
  - Issue #1214 Catalog is not displayed in nightly and #1195 Add sorting option to Catalog top bar
    - Solved catalog visibility issues. 
    - Sorting by name, recency (created date), popularity (bookmarks), rating
    - Possible improvements: more natural language-appropriate sorting
  - Issue #1161 Upgrade packages, including Meteor 1.3.4
- In progress
  - Issue # 1213 Design multiproxy architecture
    - High-level architecture document created
    - To be followed by more detailed architecture (constraints, fields)

### Nazia
- Done
  - Issue #1176 HiFi wireframes for Analytics Time Frame
  - Issue #1177 HiFi wireframe for user context awareness
  - Issue #1178 HiFi wireframes for Analytics Drilldown
  - Issue #1179 HiFi Wireframe for Average Response Time
  - Issue #1175 HiFi wireframe for API selection
- To do
  - Issue #1180 HiFi Wireframe for unique users
  
### Ville 
- Done
  - Issue #1187 Username undefined in catalogue view.
    - Helper for backend owner created/fixed.
  - Issue #1057 Documentation Editor 'host' not defined. 
    - Adding Documentation editor host setting to Settings Wizard.
	- Possible Future enhancement: allowing only https
  - Issue #1164 Published API backends are not rendered in 'Manage API Backend' view
  - Issue #1222 Create instructions on deployment
- In progress
  - Issue #1216 Empty API key right after registration first user
    - Bug fix for getting API key for the first dashboard user in new deployment.
    - If API key is missing for a user, provide a button for getting the key
  
### Illya
- Done
  - Issue #1136 Add a Cancel button and close buttonin API Documentation Manage dialogue
    - Cancel button added
  - Issue #1188 Description' text not saved while adding API backend
    - Fixed by moving description from backend wizard to settings form only
  - Issue #1002 Show average response time per API
  - Issue #1211 Enhance Apinf top bar and issue #1209 Enhance Apinf side menu
    - Admin LTE removed from project.
	- Items from side menu moved to top bar.
- In progress
  - Issue #1158 Design the dashboard analytics for API owners
    - waiting for Damir's dashboard PR to be merged
  - Issue #1002 Show average response time per API

### Damir
- Done
  - Issue #1230 Change api-umbrella sync frequency
  - Issue #1066 Select charting library and research available data types
    - we are keeping to dc.js
	- available endpoints documented in issue comments
  - Issue #1105 Dashboard charts threadlock system and issue #1040 Refactor dashboard code
    - Code refactored and loading improved
  
