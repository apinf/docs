# Ideas for API quality and reliabity in Apinf

This document contains ideas from a workshop that was held in order to improve the user experience of Apinf platform related to API quality, reliability. If the Apinf catalog contains a large amount of apis that do not work at all, but the owners have neglected to remove them from the catalog, the users may get a bad impression of Apinf platform itself. The same also applies if the catalog includes a lot of testing apis, but users have no way of knowing that they have been created only for testing purposes. 

##Ideas for improving the platform

### Front page

 - Front page could contain popular APIs instead of newest APIs

###Catalog

 - Catalog could be the first page to be shown instead of dashboard (which does not contain any data for a first time user). Or showing either catalog or dashboard could be conditional?
   - If apis are sorted by popularity, how can you mitigate "gaming" the rankings?
 - Sorting order for apis in catalog: could there be several options for sorting the apis: popularity, recency, stability, bookmarked apis
 - How to show the organizations responsible for the apis?
 - Should we have API categories? Tags (free or predefined) or a menu of categories?
 - Could we use crowdsourcing for some of the catalog features like flagging apis (inappropriate for work, dead/defunct), tagging apis?

###User profile

 - If we want to enable crowdsourcing in the platform, it becomes necessary to improve the user profile. For instance, it is not acceptable to show user emails to other users, so we should have user names / nicks for all. Other ideas
   - status badges by activity
   - points/credits
   - avatars / gravatars

##Ideas for showing and improving API quality and reliability

### API visibility

 - There could be a setting for API visibility for API owners, which they need to set when adding the API. Options: public, private, testing. 
 - Default option should be public.
 - If the owner sets the api as public, do they need to be notified that the api is added to catalog?
 - If it is a private api, who should be able to see that? Do we need additional settings for this?
 - It also needs to be possible to adjust the visibility later.
 
### Api lifecycle
 - Should we have labels for API lifecycle?
 - What would be the labels: testing, production, deprecated???
 - Do we show all of these in catalog?
   - Should be clear that testing APIs are only for testing. So that a developer visiting Apinf won't get impression of service, where nothing really works.
 - When API owner adds an API and adds a 'production' label, should indicate to API owner clearly, what is expected from production API. Some level SLA, response time for error. 

### Monitoring 
- threshold, trigger, action/notification
- how do you determine when an api can be considered dead? Is it necessary to do this automatically or can we rely on other features that this becomes unnecessary? E.g. sorting apis by popularity moves dead apis to the end of catalog? Or crowdsourcing makes this unnecessary?

### API profile
- We could have completeness rate for API "profile"
- For instance, you could get 25 points for completing metadata
- 30 points for ping quality
- 30 points for star rating
- We could also inform the user in the same way as e.g. LinkedIn does that by adding e.g. contact person you will reach a certain completeness rate
- API owner's response time for problems or questions could be there also?

### Documentation and API testing / sandboxing
- It must be easy to find the API documentation
- To get a better understanding of the API, developers want to be able to try it. Open item: real calls or sandboxing. (What does sandboxing require? Where does the data come from?)
- Could there be separate consoles for making actual API calls directly from API and for sandboxing it?
