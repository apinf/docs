# Sprint 41 Review Meeting
* Participants: Brylie, Dasha, Jawid, Matti, Mauricio, Nazia
* Date: 28.04.2017

* Brylie
[2336](https://github.com/apinf/platform/issues/2336) - Define API Platform API Architecture

A REST API is needed to be built. The task mainly comprised to decide about what the API will do and and what will be its structure. One recommendation made is to implement REST API as its own project. The design should be created as simple as possible to keep a hand on the process. A proposal to use "Simple REST" package has been made as well.


* Matti 
[2311]() - Pinning organization to API

With this feature, an Organization Manager would be able to add maximum 4 APIs that are connected to the organization as featured API.
Featured API section would appear on top of the organization page.
With the current progress of the work, the Featured API section has been implemented.
The rest of the work would include showing the featured APIs in both sections.


* Jawid
[2308](https://github.com/apinf/platform/issues/2308) - Number of APIs shown on organization page.

Organization manager can decide how many APIs can appear in default view in organization profile via settings tab. The number of APIs appearing is a multiple of 4 with pagination support when needed. Similar work has been done to show Related Media in Organization profile via issue [2309](https://github.com/apinf/platform/issues/2309)

[2310]() - RSS Feed provider

This feature would allow to harvest organization API information to outside systems RSS readers Zapier through creating a RSS feed about of all organization APIs, newest on top, oldest as last. Currently the code is ready for review


* Mauricio
Writing an Unit case 1714
S alert was not appearing when branding was changed

* Dasha
Redesigning organization card that looks quite like API card
cleaned up subscribing and public functions
implementing new swagger I, cleanup. need issue to position try out button
making footer available everywhere: 

* Nazia
API owner persona
APIBot chatbot logo and picture
DX conceptr
