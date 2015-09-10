# [2015-07-10 : Sprint 6 ](https://apinf.hackpad.com/2015-06-29-Meeting-minutes-Sprint-6-planning-bsgwL2QQ1Vg)review

**Present**

[Damir Mustafin](/ep/profile/mBLmVlL59Yq)

[Illya Nizyev](/ep/profile/w4lbdyiXvgi)

[Juuso Vallius](/ep/profile/zha0JkRDVaY)

[Taija Bjorklund](/ep/profile/qMJYdtOf8Ww)

**Task review**

[Illya Nizyev](/ep/profile/w4lbdyiXvgi)

*   #199 - resolving materialise issues after meteor-admin  damir merged & reviewed by brylie. demo. removed sidebar and moved all links to the navbar. botwatch css framework
*   #171 - creating publications and subscriptions. still not done. users can not add anything to database.
*   #169 - scode style guide on hackpad. each template own style file.
*   #167 - to remove roles filed from user profile page. there is related pull request. this task has own branch.
*   #115 - resolved how to add help block to a form fields. demo and code example
*   #114 - Customizing api backend autoform. demonstration how it looks. adding api page
*   #72 - have not enough time to start this task because of sickness

[Juuso Vallius](/ep/profile/zha0JkRDVaY) 

*   #179 - smtp, set up and working. did not write automated tests since had some issues with server. there is a need to create separate config file or extend existing settings.json  - and keep there passwords and keys used for mailgun.
*   #176 - adding bookmarks Api functionality to API catalog view.
*   #189 - pre-release automated deployment. How it works: from /develop branch the code -> to jenkins server (out dev server) -> mup server <- nightly.apinf.com, stable.apinf.com
*           API Umbrella

[Taija Bjorklund](/ep/profile/qMJYdtOf8Ww)

*   #172 - choose project versioning schema. semantic versioning. made first initial release. releases every monday mornings. 

[Brylie Christopher Oxley](/ep/profile/wbZ2WS6e73L)

*   #195 - bug that interfered with Juuso’s tasks. still in progress
*   #185 - bug. collection hooks package conflicts. done
*   #186 - 
*   #30 - documentation browser, swagger file, frame - done

[Damir Mustafin](/ep/profile/mBLmVlL59Yq)

*   #180 Email mandatory field

        *   Not able to authenticate if email is not set when registering
    *   Email validity is chekced with RegEx

*   #126 Choose unit and functional testing framework

        *   Decided: Jasmine

*   #162 Automatically generate labels on dashboard charts

        *   Easier to track the traffic

*   #164 Parameterize chart methods to allow querying
*   # 165 Make dashboard chart functions more object oriented

        *   A cleanup task
    *   To make code management more easier

*   # 184 Implement REST query on ElasticSearch

        *   Implemented

*   Bug #192: STDERR

        *   Documented how to solve: Pull latest commit from develop. Add a class to                 settings.json