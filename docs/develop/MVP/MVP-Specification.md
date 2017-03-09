# Minimum viable platform specification

This document describes minimum viable features for the APINF platform. 

## Roles

These are primary user roles:

*   API creator
*   API consumer

## Current features

**API creator**

*   API's access control

        *   User groups
    *   Superusers
    *   API groups (scopes)
    *   Admin groups 

                *   Scopes + Permissions 

*   API's list
*   Draft API's changes
*   Rate limiting
*   Analytics (for administrator)

        *   API drilldown
    *   Filter Logs

                *   By users
        *   By location

*   Add and configure API 

        *   Modify HTTP request respond
    *   Own URL structure

*   Separate layer for API
*   Edit admin user info
*   Import/Export Configuration

**API consumer**

*   One key - many API's

## Desirable features

**API creator**

Responsible for managing API's settings, branding, monitoring etc.

**API consumer**

Access API's for development, aggregation, viewing statistics etc.

*   Documentation browser
*   Create custom API's mixing sources

**Both**

Features common for all users

*   Dashboard

        *   Analytics
    *   Quires/filters

## Feature Descriptions

**Analytics**

Analytics are recorded API requests. They contain granular information such as API key, API endpoint, response time, request date/time, etc.. The Analytics can be presented to the user as tabular data, graphs, charts, etc.

**Authentication**

Users will need to authenticate in order to access many of the platform features. Authentication can be based on third party services, such as Github. Authentication will be tied to an authorization framework, that determines the scope of functionality available to a given user.

**Custom APIs**

Users can create custom APIs by combining third party API services into a user-defined API. This means that users can develop their application around a consistent API, while swapping out API services as needed.

**Documentation Browser**

The documentation browser helps users explore APIs. It offers an overview of available APIs, granular details about individual APIs, and a sandbox to test API calls.

**Dashboard**

The dashboard contains an overview of relevant information for a given user. This includes API key management, API usage, and API documentation. The dashboard is designed to allow customization and default configuration.

**User Profile**

The platform users can manage specific account details via a profile page. This includes updating basic account details such as email and password.

**Queries/Filters**

Queries and filters allow users to ask questions of their API Analytics. They can be used to generate insights into patterns of use, present reports to stakeholders, and populate dashboard displays.

## System design

Where possible, we will design cross-cutting features that can be shared between different user roles. For example, the dashboard display functionality would be useful for API Owners, Creators, and Consumers.

That said, we can also consider designing the system as loosely coupled services (i.e. microservices) that interact via common REST APIs. This may offer benefits such as increased scalability and reduced maintenance cost.