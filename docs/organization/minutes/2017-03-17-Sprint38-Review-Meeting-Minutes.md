# Sprint 38 Sprint Review Meeting

Date and time: 2017-03-17 13:00-14:00 (EET)

Participants: Illya, Brylie, Jawid, Matti, Nazia, Taija

## Illya

### 1957: https://github.com/apinf/platform/issues/1957

Illya studied options and took into use an automatic change generator (Github changelog generator) that can be used to automatically list 
all changes in releases. We can maintain a change file in the repository and use the changes list as material for creating release notes.
Still requires decision about which Github labels to use for which issues and how so that issues become correctly listed in the 
changelog files for example as bugs, enhancements.

### 2160: https://github.com/apinf/platform/issues/2160

If a user expression fails, there was an error on UI informing the user about REGex failing. This was too uninformative and did not help
the user to correct the error. Illya created more user friendly and localisable error messages, for example "Must be a valid email". 
For the APInf specific texts like front-end paths, the error also lists allowed characters.

### 2162: https://github.com/apinf/platform/issues/2162

Illya studied and experimented with the data available from API Umbrella analytics through Elastic Search. There is now a document
describing Elastic Search data structure. The conclusion was that API key data is available through Elastic Search and that it would be 
for example possible to build a user-specific dashboard based on API key usage.

Document can be found from APInf docs repository: https://github.com/apinf/docs/blob/master/docs/develop/Integration/Elasticsearch-data-structure.md

### 2191: https://github.com/apinf/platform/issues/2191

Every source file starts with copyright and license information, except for files we have taken into use and not modified (e.g. libraries), which 
keep the original copyright.

### 8: https://github.com/apinf/apinf.github.io/issues/8

Illya described the (manual) deployment steps for the webpage.

## Brylie

### 2302: https://github.com/apinf/platform/issues/2302

Brylie is creating a system model diagram of APInf along with the API Umbrella proxy and the eMQ broker. The diagram contains users, components
and technologies.

Diagram can be found from the issue, to be added to docs repository.

### 2241: https://github.com/apinf/platform/issues/2241

Brylie has created a diagram that document the permissions for each user role: anonymous, authenticated, API manager, organization manager and admin.

Diagram can be found from the issue, to be added to docs repository.

### 2129: https://github.com/apinf/platform/issues/2129

Brylie has documented three different monitoring solutions. The purpose is to find a monitoring service that could be integrated with APInf and
used for monitoring APIs. Minimum requirement is being able to monitor web services. Some of the additional requirements are admin API and analytics API, notification. Potentially there could also be an agent that runs in the API server (e.g. CPU load, network throughput). 

If we are integrating this with APInf, it should also be fully open source.

Monitoring document can be found from: https://github.com/apinf/docs/blob/master/docs/research/API_Monitoring_Service.md

## Jawid

### 1986: https://github.com/apinf/platform/issues/1986

Jawid has researched and experimented with options for capturing and tracking application exceptions.

This is work in progress, document not available in docs repository at the time of writing the minutes.

## Matti and Jawid

### 2188: https://github.com/apinf/platform/issues/2188

Organization manager can add media links to the organization page. The media content can be for example Youtube videos, events, blog posts,
tweets. The link is presented as embedded content on the organization page. It could be used for example to promote events related to their API or
blog posts about using their APIs or changes coming.

## Nazia

### 2178: https://github.com/apinf/platform/issues/2178

Nazia has created design sketches and wireframes for front page redesign with mobile-first approach. The purpose is to include only the essential
functionality and content on the front page.

### 2117: https://github.com/apinf/platform/issues/2117

Nazia has created a new persona for API consumer with a scenario. The persona description can be found from the issue comments.

### 41: https://github.com/apinf/open-api-designer/issues/41

Nazia arranged a usability test for open API designer for one first-time user. As a result, both usability issues and SW bugs were found.

