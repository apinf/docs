# APInf UI novice DX
*Experimental Monday 23 Oct 2017*

## Description
The intention of this experiment is to verify how well the DX (Developer eXperience) of the API Management is aligned with the messages delivered for API Ecosystem by the Apitalists. The basic concepts should be visible in the tool and the ease of use should be in place.

The basic principle is that the tool user shouldn’t have to know nearly anything about API Management. The intuitiveness should be very high in the UI in order not to lead Developer lost.

The observations are recorded in this document.
## Observations
### 1
First login 
Registration (Sign Up) does not lead to the page
- the first login (Sign in) leads to the page

#### 1.1
Account Deletion changed the behavior:
Registration or Login with github leads to the page
- Somehow the system seems to remember my previous login, or by some other reasons treats me differently. Better, actually.
- The first impression matters. There is something wrong now.

#### 1.2
Automated registration, when using Sign In, should be told to user, while entering with
github credentials.

### 2
Layer organization should be visually available, so that
also newbie developers can intuitively feel where they are.

The following discussion is based on how #apiops and #apitalist networks communicate about API Economy. Therefore it would be nice to see the message coming through in the implementation.

API Management views
- Dashboard
- Catalog (APIs)
- Communities (Organization)

Note! Communities may have members from several organizations.
Note! Community may be named just according to an organization, which is OK.

Perhaps the DX orientation would be show:
- API Developer’s views
- API User’s views

In that case:
* API User’s views (and API Develpers obviously)
  * API Catalog
  * Community Catalog
* API Developer’s views
  * Add API
  * Dashboard
Perhaps no need to mention the view grouping, but just list the menu items in User friendly manner.

Also the whole stack would be nice:
- Management
- Proxy
- Gateway
- API

### 3
https://apinf.io/

`Get control of your digital resources`
`Develop. We take care of the rest.`

Where am I?

Catalog?

### 4
Dashboard
You have not yet connected your API to a proxy. To see analytics of your API usage, browse your API from Catalog and configure a proxy from the API profile.

A picture would be nice. E.g. if this is right:

Now:

`API ----------- Catalog`

Should be:

`API -- Proxy -- Catalog`

What is the API in Proxy used for querying information? Or do we get everything with HTTP responses?

### 5
APIs
Is this API Catalog?
Would be named accordingly, to help newbies in navigation.

#### 5.1
Filter
Possible to make Esc button to escape from filter view?

#### 5.2
All APIs should be labelled. Now “Production”, “Development”, “Design” seen. Those empty ones cause questions and obvious result not to use, but explicitly stated ease up Developers’ decision making.

#### 5.3
Latest APIs should be in API Catalog as well. We are talking about catalog anyhow, and one specific view of that.

### 6
Add API
‘Design’ could be the default status of lifecycle.

### 7
Organizations
Adding API directly from this view would be cool. I.e. Add API + Connect API

### 8
API configuration
Details
Documentation
Metadata
Feedback
Backlog
Export
Settings
Proxy

#### 8.1
API User and Owner should have the same common vierw
E.g.
Details
Documentation
Feedback


#### 8.2
Some titles could be considered to be renamed
Details -> General (isn’t it?)
Documentation
Feedback
Backlog
Export
Settings
Metadata
Proxy

#### 8.3
If API is private, can it be used blindly?

#### 8.4
What is the use of Metadata?


