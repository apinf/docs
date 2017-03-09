# APINF MVP UI specification

The purpose of the document is to specify which views will be available in the minium viable product. Included in the descriptions are the relevant routes to the views.

## Frontend view

**Homepage**

*   route: /

**Sign-up and login page**

*   pop-up / modal without a route

**Terms and conditions**

*   pop-up view, which opens from sign-up

*   route: /terms

**Footer (partial view)**

*   contains social media links
*   Impressum

## Dashboard

**Common features**

*   Logout view
*   User profile

*   route: /profile

*   Note: Currently there is also a view for deleting accounting and changing password, but will possibly be combined with profile

*   Navigation sidebar (partial view)

**User dashboard (API users)**

*   route: /dashboard

*   Analytics (partial view)

        *   Usage logs

*   Documentation browser (not part of MVP?)

*   route: /docs

**API administration (API owners)**

*   route: /<api-name>/admin (could also be <organisation-name>/admin)

*   Creating and maintaining admin groups (not part of MVP?)
*   Analytics

*   route: /<api-name>/analytics

*   API Drilldown
*   Filter Logs
*   By Users
*   By Location

*   User management (not part of MPV?)

*   Upload API description file (Swagger and RAML, not part of MVP)

**System administration**

*   route: /admin

*   route: /admin/users

*   route: /admin/users/new

*   route: /admin/users/<user-id>/edit

*   Delete user (action button, not a view)

*   Creating and maintaining admin groups

*   route: /admin/groups

*   route: /admin/groups/new

*   route: /admin/groups/<group-id>/edit

*   Delete admin group (action button, not a view)

*   Creating and maintaining API scopes

*   route: /admin/scopes/

*   route: /admin/scopes/new

*   route: /admin/scopes/<scope-id>/edit

*   Delete admin group (action button, not a view)

*   API Backends

*   route: /admin/backends

*   route: /admin/backends/new

*   route: /admin/backends/backend-id/edit

*   route: /admin/import_export