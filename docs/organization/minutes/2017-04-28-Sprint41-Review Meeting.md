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
[1714]() - Writing an Unit case 1714

An unit case is being written down for APInf in for the first time. It is relate to the issue [1506](https://github.com/apinf/platform/issues/1506) where S alert doesn't appear when user changes and saves Branding settings.

* Dasha

Dasha Redesigned organization card so that now it looks quite like API card.
Also she made clean-ups in subscribing and public functions.
She integrated the new swagger 3.0 UI to APInf with issue [2349](https://github.com/apinf/platform/issues/2349). She would be fix position of the Try out button in the US in a new issue
She also worked with the issue [2378](https://github.com/apinf/platform/issues/2378), which would make APINf Footer appear all around the platform. Some work still needs to be done here, so it is still in progress

* Nazia
Nazia created an API owner persona based on the scenarios from the customer journey in issue [2406](https://github.com/apinf/platform/issues/2406). It is mutually agreed upon that the persona created should be kept alive with contexts and scenarios added time to time.
She also contributed in launching APIbot by creating a logo for it and some pictures for the landing page.
She is also creating a concept for Developer Experience in APInf with some Gamification feature and making low fidelity wireframes in the issue [2452](https://github.com/apinf/platform/issues/2452). The concept involves showing completeness of an API profile based on fields completed, documentation added, etc. This work is still in progress
