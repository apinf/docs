# 2015-08-14 : Sprint 9 review

**Present**

[Brylie Christopher Oxley](https://www.openhub.net/accounts/brylie)

[Damir Mustafin](/ep/profile/mBLmVlL59Yq)

[Juuso Vallius](/ep/profile/tPN01rySCnJ)

[Taija Bjorklund](/ep/profile/qMJYdtOf8Ww)

Laura Ekman

[Chandra Challagonda](/ep/profile/swTYKWJpF5W)

## Task review

**Damir Mustafin**
<undefined><li>**#347 Create route for editing an existing API Backend**</li></undefined>

*   A replica of already existing task
*   Adds ability to edit already existing API

<undefined><li>**#288 Add overview dashboard layout**</li></undefined>

*   Added overview chart that enables the user to see more wide range of dates    

<undefined><li>**#279 Autopopulate API backend configuration form**</li></undefined>

*   Fills in the configuration form when user uploads a configuration file

<undefined><li>**#181 Filter the chart to show a give user's API usage**</li></undefined>

*   Fine polishing the query to filter the data according to the user API key

<undefined><li>**#329 Add service monitoring endpoint to Apinf infrastructure**</li></undefined>

*   Adds route /status where the user can see the status of Apinf web app, API umbrella and Elasticsearch
*   The view lets the user know are the services up or not

<undefined><li>**#215 Parse API configurations**</li></undefined>

    -     
<undefined><li>**#322 Refresh heatmap when data is returned from ElasticSearch**</li></undefined>

*   Almost done
*   Was more difficult than expected since the dataset is so wide
*   baselayer was down, so hotfix was created in order to render the basemap

<undefined><li>**#324 Importing single API-backend configuration**</li></undefined>

*   Almost done, just needs a file system structure to be changed

<undefined><li>**#332 Design function that informs user about API status**</li></undefined>

*   Perhaps append it into the existing tabular table?
*   Same approach to /status (see #329)
*   One solution is to extend backend schema
*   Another one is to send http or icmp queries to the API

Note: Brylie assigned to task #326 in order to free up time for Damir to finish off his important tasks.

**Brylie Christopher Oxley**
<undefined><li>**#325 Add Managers field to API backend schema**</li></undefined>

*   Created sub menus for API backends: 'add api backend' and 'manage api backend' 
*   "My managed apis" shows more information about the api

<undefined><li>**#177 Add new APIS to API-Umbrella**</li></undefined>

*   brylie:api-umbrella had a bug in version 2.8, that needed to be updated
*   Creates added API in Api-Umbrella

<undefined><li>**#334 Implement privileges for all apiBackends publication**</li></undefined>

*   Needs polishing and a PR, almost done

**Taija Björklund**
<undefined><li>**#317 Organize Hackathon brainstorming session**</li></undefined>

*   Collected ideas of the session in a document
*   Plan is to have a one day mini-hackathon
*   Small event enables us to practice how to organize bigger events
*   Ideally before Mindtrek
*   Further details in the [Minihackathon document](/Mini-hackathon-R2zjsiNqVG7)

<undefined><li>**#328 Create Apinf system model diagram**</li></undefined>

*   Diagram to be added to Github repository (docs/developers)
*   Suggested by Chandra: Make another document without technical information

**Juuso Vallius**
<undefined><li>**#330 Add API design UI that generates Swagger to Apinf infrastructure**</li></undefined>

*   No open source solutions available for creating a Swagger file with an easily understable UI (fields that need to be filled)
*   Swagger editor added to Apinf
*   Divided screen: editor and created Swagger document

<undefined><li>**#336 Choose code snippet generator**</li></undefined>

*   Requirements: open source, possible to integrate to web browser
*   Swagger editor creates a SDK as a zip file that can be downloaded
*   Acceptable for now, but for future we need to consider how to show only code snippets in the browser

<undefined><li>**#348 Move Bookmarks view into Catalog view**</li></undefined>

*   Bookmark view added, shown conditionally (i.e. only if user has bookmarked API backends)

<undefined><li>**#349 Create route and view to display an existing API Backend**</li></undefined>

*   To be solved: how to pull and display the data

<undefined><li>**#287 Using Meteor roles, hide privileged sections of the dashboard from non-privileged users**</li></undefined>

*   Blocked by other tasks