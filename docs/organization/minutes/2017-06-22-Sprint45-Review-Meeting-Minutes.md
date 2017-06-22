# Sprint 45 Review Meeting
* 22.06.2017 13:15 - 14:00
* Participants: Brylie, Ilya, Kerkko, Nazia, Taija, Tuli

# Task Showdown

* **Ilya**
- [2643](https://github.com/apinf/platform/issues/2643) Ilya and Nazia worked together to conduct user testing with Dashboard wireframes.
The users scripts can be found [here](https://github.com/apinf/docs/tree/master/docs/design/dashboard).
The user feedback were analyzed to see how the proposed design fulfill needs of the API Dashboard users.

- [2642](https://github.com/apinf/platform/issues/2642) Pricing information for the platform can now be displayed by inputing HTML and CSS codes in a **Custom HTML Block** under Banding.
Platforms, that don't wish to offer pricing can use this block for advertisement purpose.
For future implementation of Saas Monetization, potential design ideas were created.
This can be found [here](https://github.com/apinf/docs/tree/master/docs/design/SaasMonetization/FutureIdeas)

- [2568](https://github.com/apinf/platform/issues/2568) Added Pricing information for APInf now appears on platform Landing page.
HTML and CSS code has been inserted in **Custom HTML Block** under Branding menu for showing the information.
The code can be found in [this PR](https://github.com/apinf/platform/pull/2662)

- [2628](https://github.com/apinf/platform/issues/2628) A bug was produced where site title text got appended with Privacy Policy and
Terms of Use text titles.
This have been fixed.

- [2639](https://github.com/apinf/platform/issues/2639) Ilya and Nazia are working together to create APInf branding guidelines.
This would include aspects like **APInf's goals**, **Target Users**, **Uniqueness from Competitors** and most importantly a **style guide.**
As part of the issue an exercise to list down preferences in UI style and functionality has been conducted.
Also UI elements used on APInf are being categoried now.
The end result of this issue would be a live document for current and future developers, Designers and UX experts to refer.
The work would continue in next sprint.

* **Nazia**
- Nazia worked together with Ilya to conduct user testing for Dashboard prototypes.[2643](https://github.com/apinf/platform/issues/2643) Ilya and Nazia worked together to conduct user testing with Dashboard wireframes.

- Nazia also Collaborated with Ilya on Creating APInf Branding Guideline [Issue 2339](https://github.com/apinf/platform/issues/2639)

- [2640](https://github.com/apinf/platform/issues/2640) Nazia created wireframes for future ideas for Saas Monetization of APInf.
The design included how pricing appers in Landing page (free/paying), how pricing can be set from a separate menu under setting page,
How user gets notified about his usage scheme from dashboad and via email
The wireframes can be found [here](https://github.com/apinf/docs/tree/master/docs/design/SaasMonetization/FutureIdeas)

* **Tulir and Kerkko**
- Tulir and Kerkko created two new workflow columns in related [waffle board](https://waffle.io/apinf/open-api-designer) for OpenAPI Designer.
Under **In Review** column,all PRs that are ready to be merged, along with the closing issue, would be placed.
**Low Priority** column includes issues that are enhancement but won't be developed in near future sprints, but later.

- A [PR](https://github.com/apinf/open-api-designer/pull/160) have been merged to make big improvements in the UI of OpenAPI Designer.
The new UI can be found in [here](https://oai.maunium.net/feature/paths-form-mvp/#/paths)
This would bring changes in the Output view.
Now fields that are left empty will not appear in the output view.
Path module for the OpenAPI Designer have been implemented. Now each path would be able to list only one instance of each HTTP methods.
A module to declare global definitions have been implemented. The definitions can now be referenced in Response subfield under a method.
In next sprint, functionality for using global definitions in parameters would be implemented.
Also tags defined can be referenced now in related fields.
A list of most populat mime types now appear as suggestion when users type in related fields. On typing an invalid mime type, error is given along with the input.

- A new [Repository](https://github.com/apinf/openapi-hub) have been created for Backend functionality of OpenAPI Designer. 
The backend would store specifications for OpenAPI

* **Brylie**
- [2636](https://github.com/apinf/platform/issues/2636) as part of this issue, Brylie is experimenting with charts to appear in Dashboard
or Overview of API Usage pages.
- He also made a PR to intigrate [Wireclouds](https://wirecloud.readthedocs.io/en/stable/)with APInf.
WireCloud builds on cutting-edge end-user development, RIA and semantic technologies to offer a next-generation end-user centred web application mashup platform aimed at leveraging the long tail of the Internet of Services.
This project is part of [FIWARE](https://www.fiware.org/)
