# APInf SPrint 42 Review Meeting
* Date: 12.05.2017 13:00 - 14:00
* Brylie, Ilya, Jawid, Matti, Nazia, Taija.


# Brylie

* Brylie has been working on [Defining API architecture for APInf](https://github.com/apinf/platform/issues/2336#issuecomment-301026879). 
An architecture diagram has been designed for REST API Architecture an in the process of review.
Mentioned endpoints for APInf REST APIs can be suported with the proposal. 
* He has made a [release](https://github.com/apinf/restivus-swagger) for the Restivus Swagger Pluggin. 
This pluggin helps to generate swagger.json for a restivus API.
* He also is fixing a [bug](https://github.com/apinf/platform/issues/2528) for which APInf Dashboard was appearing empty and the API dropdwn list was appearing empty for APInf Admin
* He also fixed a [bug](https://github.com/apinf/platform/issues/2546) for which, organization profile was appearing empty of its content.
* He has also been doing research about [dashboard aggregation and charting library](https://github.com/apinf/platform/issues/2503) to replace the existing graphs used in APInf.
As part of the findings, "fresh", implementation of an EMQ dashboard uses NVD3 charting library in addition to aggregated data requests from Elastic Search.
So it can be used as a starting point.
Also there has been recommendation about ECharts that is being used in API Umbrella.


# Ilya
* Ilya fixed a [bug](https://github.com/apinf/platform/issues/2474) that ws making it possible for anonymous users to get API keys without logging into APInf
* Also he helped Damir with tasks related to EMQ Proxy.

# Jawid
* Jawid worked on the implementation of harvesting [RSS feed about API](https://github.com/apinf/platform/issues/2310).
This would allow  information about organization APIs to be harvested to outside systems like RSS readers Zapier through creating a RSS feed about of all organization APIs, newest on top, oldest as last.
* He also fixed a [bug](https://github.com/apinf/platform/issues/2532) where an API profile with a valid swagger documentation was unable to show the document in swagger viewer under Documentation tab.
* He also fixed another [bug](https://github.com/apinf/platform/issues/2296). 
With current Documentation Manage feature, a swagger file can be added both as afile or URL.
However, with this bug, the old valid/correct documentation available with an URL was appearing as "Swagger document is not valid".
If the type was changed into file, then the UI was getting updated after refresh.
* He worked on implementing [APInf User API](https://github.com/apinf/platform/issues/2501). 
Restivus was used to implement this. 
YARC was used to test the outcomes.

# Matti
* Mattic ompleted the feature of pinning [featured APIs in organizations](https://github.com/apinf/platform/issues/2311)
* He worked on implementing [APInf User API](https://github.com/apinf/platform/issues/2501). 
Restivus was used to implement this.
* He also fixed a [bug](https://github.com/apinf/platform/issues/2546) for which, organization profile was appearing empty of its content.
* Made translation of APInf REST API feedback (given in swaggerhub) from Finnish to English

# Nazia
* nazia completed the concept design for Develeoper Experience [DX](https://github.com/apinf/platform/issues/2452) score in API profile.
More emphasis was given on a validating swagger documentation and Maintaining API performance.
* She also sketched low-fi prototype for chaging [APInf Branding Colors](https://github.com/apinf/platform/issues/2418).
suggestions have been made to usr default BS primary color and Accent color settings there.
Also a suggestion for incorporating CSS editor has been proposed as an advanced version.
* She also worked with the API documentation for APInf User API in Swagger Hub.
