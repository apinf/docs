# 2015-04-13 : APInf meeting w Jarkko

The purpose of the meeting was to discuss the big picture for APInf, review the first draft of platform specification (MVP) and discuss how to document any ideas for future development.

## Present

*   [Brylie Christopher Oxley](https://www.openhub.net/accounts/brylie)
*   Illya Nizyev
*   Jarkko Moilanen
*   [Taija Bjorklund](https://apinf.hackpad.com/ep/profile/qMJYdtOf8Ww)
*   Vesa Härkönen

## Big picture for APInf

Jarkko presented his idea, how APInf should be a tool (API portal) for the changing paradigm in API development: design first (as opposed to API first thinking). For more information, see [](http://apisuomi.fi/2015/02/api-101-rajapintojen-kuvauskielet/)http://apisuomi.fi/2015/02/api-101-rajapintojen-kuvauskielet/ (blog post by Jarkko, available only in Finnish). 

## Review of Platform specification for MVP

Illya and Brylie presented the first draft of the [Platform specification](/Minimum-viable-platform-specification-T1e6HzUYgYk)  for APInf.

Currently the document identifies primary user roles, lists current/existing features and desirable features. The primary user roles identified in the document are the correct ones. 

Also, the desirable features listed in the first draft were feasible. Options for login service were discussed, but it was agreed that the MVP should use login "as is" from the API Umbrella project. The following features should be moved from the specification to roadmap: 

*   custom layout and 
*   content customization. 

## Roadmap and development ideas

For the purpose of documenting and discussing any future development ideas and needs (versions beyond MVP), we will set up a [roadmap document](/Roadmap-cggY9GWDqZs)  in Hackpad. 

:alarm_clock:  **AP** [Brylie Christopher Oxley](https://www.openhub.net/accounts/brylie): set up the roadmap document.

The following ideas were suggested to be included in the roadmap

*   Layout customization (to be moved from the Platform specification)
*   RAML support
*   Possibility for creating widgets
*   SSO as separate service
*   apis.io description
*   Landing page (customization) for companies

Other issues to be considered:

*   What are the possible allies for the project?
*   How to create the platform to be as future-proof as possible? 

        *   Suggestion: isolate all services/components and use the services through APIs. This allows using varying technologies (Note: one technology per service)
