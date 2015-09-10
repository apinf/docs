# Rate limiting

## Api Umbrella

Api Umbrella allows users to limit the API usage in the following way

- Number of requests per API or IP-address within certain time period (seconds, minutes, hours, days)

- For example: 1000 requests within 24 hours for API key <X>

![](https://hackpad-attachments.s3.amazonaws.com/apinf.hackpad.com_oWHZLO0GYwA_p.409822_1437029843844_Screenshot from 2015-07-16 09:38:28.png)

With the help of Primary radio button the backend owner can choose which of the rate limits is being shown to user.

![](https://hackpad-attachments.s3.amazonaws.com/apinf.hackpad.com_oWHZLO0GYwA_p.409822_1437029856284_Screenshot from 2015-07-16 09:57:10.png)

The way that Custom rate limiting is saved in MongoDB in:  [](https://github.com/NREL/api-umbrella-gatekeeper/blob/f6ef66fd8d0d2a001a305fe8385410d077bfdf29/test/server/rate_limiting.js#L775-L824)[https://github.com/NREL/api-umbrella-gatekeeper/blob/f6ef66fd8d0d2a001a305fe8385410d077bfdf29/test/server/rate_limiting.js#L775-L824](https://github.com/NREL/api-umbrella-gatekeeper/blob/f6ef66fd8d0d2a001a305fe8385410d077bfdf29/test/server/rate_limiting.js#L775-L824)

The information how rate limiting works in the original project: [NREL/api umbrella#147](https://github.com/NREL/api-umbrella/issues/147)

## Desired features

Our user story _for MVP and roadmap_ states the following about rate limiting:

_"As Harri (API administrator), I want to define limits to API usage by **user_**_, by **location_**_, by **time_**_, and **rate_**_" _

The features that are needed. Checked features are already implemented:

*   Ability to filter the API usage by geography (Queries coming from certain country) (**Roadmap**)
*   Limit by time (Requests allowed between 8 am to 9 pm) (**Roadmap)**

*   By registered API user (API Key) **(MVP)**

*   By IP address (Available, but not implemented in our UI) **(MVP)**

*   By rate (requests within certain period of time) **(MVP)**

## Implementation plan

Since all the features needed for MVP are already in place in the original project, all we need to do is to implement them in UI properly. 

Created tasks:

*   Add helper information to API backend fields. Task [#245](https://github.com/apinf/api-umbrella-dashboard/issues/245) 
*   Add field for limiting by IP address. Task [#246](https://github.com/apinf/api-umbrella-dashboard/issues/246)  

For the missing features: limit by time and country feature requests are posted at the original project.

Links to the feature requests: 

[NREL/api uickFieumbrella#157](https://github.com/NREL/api-umbrella/issues/157)

[NREL/api uuickFiembrella#158](https://github.com/NREL/api-umbrella/issues/158)