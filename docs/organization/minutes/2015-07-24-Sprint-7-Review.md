# 2015-07-24 : Sprint 7 review

Sprint 7 review notes, organized by participant.

## Brylie Christopher Oxley 

*   Completed initial Apinf Administrator API design specification

        *   Worked through API Design whitepaper

*   Created API documentation file in Swagger format

        *   Used Swagger GUI tool
    *   Created basic endpoints
    *   Created basic data model

*   Worked with team members on various tasks throughout sprint

        *   Charts
    *   Map
    *   Publications/Subscriptions
    *   Bookmarks

## Taija Bjorklund 

## Illya Nizyev 

*   Bookmark buttons

        *   Pair programming with [Damir Mustafin](/ep/profile/mBLmVlL59Yq) and [Brylie Christopher Oxley](https://www.openhub.net/accounts/brylie) 
    *   Created button with toggle state
    *   Created bookmark toggle method on server

*   Swagger upload

        *   Added upload button to API Backend form

                *   created upload event to handle file

        *   Created Filesystem collection to store Swagger files

*   Dashboard makeover with Admin LTE

        *   Added navigation menu

                *   links to key features
        *   Added user photo to top navbar

*   Created 404 template for project

        *   Shows in master template

*   Converted some CoffeeScript files to JavaScript, where relevant

        *   Making sure we use JavaScript in any file we modify
    *   Slowly converting our codebase

*   Re-direct to sign-in page for routes requiring authentication

        *   Created router action
    *   added action to router onBeforeAction

## Juuso Vallius 

*   Map

        *   Currently have to force update to render map properly
    *   Created basic map template with base layer
    *   Created basic map route
    *   Added heatmap to route

                *   shows geolocation by user IP

*   API Usage logs table

        *   Created static data table

                *   pagination
        *   search

*   Automated deployment

        *   Manually deployed with Mup, but had problems
    *   Had to re-create deployment server, worked with [Illya Nizyev](/ep/profile/w4lbdyiXvgi) 
    *   Determined it is not yet necessary to automate deployment, at least since we have no functional tests to run
    *   Configured Jenkins server with [Aseem Shakuntal](/ep/profile/sWTEun2Rf6U) 
    *   Automatically generate configuration files using Jenkins

## Damir Mustafin 

*   Charts

        *   Converted dashboard to DC.js, so that charts are integrated on dashboard (with [Brylie Christopher Oxley](https://www.openhub.net/accounts/brylie) )
    *   added loading state indicator to dashboard
    *   Dashboard has responsive design
    *   Added filtering widgets along top of charts
    *   Added error message when data is not available

*   Reset password

        *   Configured Mailgun
    *   Tested reset-password link

*   Parse API Configuration files

        *   convert YAML configuration files to JSON
    *   Insert into MongoDB