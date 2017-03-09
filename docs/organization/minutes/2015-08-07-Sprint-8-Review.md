# 2015-08-07 : Sprint 8 review

**Present**

[Brylie Christopher Oxley](https://www.openhub.net/accounts/brylie)

[Damir Mustafin](/ep/profile/mBLmVlL59Yq)

[Illya Nizyev](/ep/profile/w4lbdyiXvgi)

[Juuso Vallius](/ep/profile/tPN01rySCnJ)

[Taija Bjorklund](/ep/profile/qMJYdtOf8Ww)

## Task review

**Juuso Vallius**

*   #307 Add markup to dashboard

        *   Almost done: PR with WIP label. Issues with changing the width.

*   #284 Integrate heatmap to dashboard

        *   No PR yet. Map isn't updated with request data until user interacts with the map > Bug report needed.

*   #259 Create data table pagination on dashboard

        *   Done in cooperation with Damir. Dynatable was packaged for Meteor in order to make pagination happen.

**Taija Björklund**

**Brylie Christopher Oxley**

*   #222 Implement high priority Apinf endpoints

        *   Needs more planning and design.

*   Bug fix without task number

        *   Admin role is created when Apinf is started for the first time. PR to be merged.

*   #217 Define and implement most important privileges

        *   Work remaining for two check boxes: all API Backends publication, all analytics data query

*   #177 Add new APIs to API Umbrella

        *   Pair programming with Illya. Minimum clarified fields clarified, Postman issue solved, work with Autoform still required > You can add new API Umbrella via wrapper but not yet through UI.

*   #303 Clean project structure

        *   Pair programming with Illya. Coffee script removed completely.

*   #278 Document dashboard integration decision

        *   This task helped with the construction of query for Damir's task and getting dashboard integrated and what fields can be queried on.

**Illya Nizyev **

*   #285 Allow only text files on API config and Swagger upload

        *   Created an array, where accepted file types are listed.

*   #277 Implement contact form for landing page

        *   When you press submit in the contact form, all fields are frozen while submission is taking place. If required information is missing, fields will have red border and contain an error message about missing data.

*   #264 Automatically configure Github authentication on manual deployment

        *   Github authentication working on Illya's server.

*   #263 Disable Social Media sign-up

        *   All social media login buttons have been removed.

*   #231 Re-design API configuration form

        *   Re-designed using API Umbrella as reference. All optional blocks are collapsed by default.
    *   A known issue in sub-URL request settings: wrong field type.
    *   The re-design meant "pushing auto-form to its edges"
    *   Errors (aka missing data) treated as in contact form.
    *   To do: Consider revisiting API backend schema to reflect the re-designed form: either should be organised into sections or divided into several files

*   #180 Define email as a mandatory field on user registration

        *   Solved by adding an error message: "Please make your Github email public in order to login."

*   #266 Add inline help to chart widgets

        *   More work required. Help button designed and pop-up field available.

*   #306 Resolve DC conflict

        *   Not resolved. Bug report required.

**Damir Mustafin**

*   #279 Autopopulate API backend configuration form

        *   Almost completed: select file button available. When the file has been uploaded, the form is autopopulated. Data added to database after pressing Submit button at the end of form.
    *   To be considered: how to add one API backend instead of all API Umbrella data.

*   #216 Determine required fields for API configuration form

        *   List of required fields recognised, will change optional state to false or remove optional.
    *   Changes to schema required.
    *   Part of the task needs to be revisited.

*   #215 Parse API configurations

        *   Missing: if there are subobjects, make sure they don't get lost.

*   #288 Add overview chart to dashboard layout

        *   Overview chart added but not integrated. Chart looking a bit strange because we have so little data currently.
    *   Brylie suggested using bar charts: to be considered for roadmap.
    *   Labeling task to be created.