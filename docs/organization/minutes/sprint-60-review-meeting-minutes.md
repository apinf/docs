# Sprint 60 Review Meeting Minutes
Date: 08.12.2017
Participants: Antero, Dasha, Matti, Nazia, Vesa

# Showcase

**Antero**
* [3144 - Sign up failures with Github](https://github.com/apinf/platform/issues/3144#issuecomment-349262073)
This task is still in progress. With 0.52 release in staging the problem still persisted for some APInf internal team members GitHub login.
One client also couldn't access APInf with GitHub.
There is a possibility that the current version of meteor is causing the problem.
Investigation on this issue is still in progress.
* [3091 - Staging: shows empty page in IE and Edge browsers] (https://github.com/apinf/platform/issues/3091)
APInf staging environment appeared empty in IE10 and Edge browser in MS Windows 10.
An imported swagger UI bundle JavaScript file which has been minified caused the problem
The compressed product was not compatible with IE.
A codefix was made to solve the problem
* [3166 - Front page loading](https://github.com/apinf/platform/issues/3166)
Loading time of APInf front page was increasing because all dlls were getting loaded at the same time.
async attribute (html5) was added to fix the problem.

**Matti**
* Mostly reviewing PR made by other developers
* [3151 - PUT /apis Error: Meteor.userId can only be invoked in method calls or publications](https://github.com/apinf/platform/issues/3151)
Matti mainly worked on an issue which caused creating error when https PUT method was invoked from API documentation.
Invoking resulted with 500 or Internal server error.
More details can be found from associated [PR](https://nightly.apinf.io/apis/new)

**Dasha**
* [3061 - Add API using Swagger file: parse json and yaml](https://github.com/apinf/platform/issues/3061)
In APInf, now an API profile can be uploaded by simply adding a Swagger file (json, yml or yaml format). 
A new module in the Add API page now allows user to either upload a swagger file or give the URL for the file.
Since swagger doesn't supprt API lifecycle,a phase can be sected from the lifecycle dropmenu in this module.
[More...](https://nightly.apinf.io/apis/new)
* [3089 - Swagger UI not able to load](https://github.com/apinf/platform/issues/3089)
For Kunta API in PAInf production, the documentation tab couldn't load the added swagger document in the view.
Investigations behind the cause are still in progress.
There wasn't any problem with the swagger-parser library (with updated version) or nay exceptions with circular references.
However, this might to do somehting with the file client uploaded with in the API documentation tab.
* [1794 - Notify users about succesfull add/edit/remove backlog](https://github.com/apinf/platform/issues/1794)
Previously adding, modifying or deleting backlog items from API profile didn't show any notifications to the users about the executed action.
Now S-alert would appear if the above actions are taken place in API backlog.
Also the code has been refined to write testcases for backlog checking easily
* [3111 - Unreadable time label in organization card (in Finnish)](https://github.com/apinf/platform/issues/3111)
A bug was causing the creation date on API card to appear with redundant characters when the language was changed into suomi. 
The creation date wasn't visible.
This has been fixed.

**Ilya**
* [3147 - eMQ dashboard overview design](https://github.com/apinf/platform/issues/3147)
* [3148 - eMQ dashboard details view design](https://github.com/apinf/platform/issues/3148)
Ilya has been mainly busy with designing Dashboard overview and details view for EMQ.

