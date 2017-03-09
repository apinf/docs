# Sprint 29 Review Meeting

## Participants
* Brylie
* Nazia
* Sandhya
* Ville
* Taija

## Task Review

### Brylie
* #1020 Setting for API visibility API Backend
  * Finalizing the task: fixing console errors, ironing edge cases like visibility for bookmarked APIs
* #1091 Design API backend schema, #1379 Update Add API wizard
  * Add API wizard removed, API added to Catalog with a small form
  * All proxy backend related settings removed collection, schema and API settings tab
  * APIs cannot be connected to APIs at the moment
* Worked also on reorganizing project structure

### Dasha
* #Integrate SDK download to Documentation tab: ongoing

### Nazia
* #1393 Wireframe for API Proxy Add & Edit UI
* Wireframe for SDK download

### Damir
* #1378 Design Proxies collection and schema, #1383 UI for adding or editing API proxy
  * Sidebar added for different settings, new view added for Proxies, only API Umbrella supported

### Ville
* #1388 Plan & test MongoDB database migration from 2.x to 3.x
  * Nightly upgraded to 3.x, WiredTiger engine
  * Update scripts shared to Shaliko
* #1375 Data migration strategy
  * Based on the investigation, percolate:migrations selected as package for database migrations
* #1406 Test database migration with percolate:migrations
  * Sample migration done for isPublic field, closed without merging due to multiproxy changes to collections
* #1378, #1383: Finalising Damir's tasks on Proxies
* Investigating Swagger authentication case
