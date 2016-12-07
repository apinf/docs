# Permissions

This document outlines our current roles and collections, describes permissions for each role type, and proposes a schema adaptation.

## Overview

**Roles**

We have defined the following roles for our anticipated users:

*   Administrator
*   API Owner (Manager)
*   User

**Collections**

We will focus initially on writing permissions and validation for the following collections:

*   ApiBackends
*   ApiBookmarks

**Collection permissions**

*   insert
*   update
*   delete

**Metrics**

The Elastic server contains records of API calls, or metrics.

## Proposed permissions

**Administrator**

Administrators have full access to manage all data and settings for the system.
<undefined><li>**apiBackends**</li></undefined>

*   insert: true
*   update: true (all)
*   delete: true (all)

<undefined><li>**apiBookmarks**</li></undefined>

*   insert: true
*   update: true (all)
*   delete: true (all)

<undefined><li>**Elastic**</li></undefined>

*   viewAllData: true

**Manager**

API Managers (a.k.a. Owners) are users who have created an API Backend. Upon creation of an API Backend, the creating User ID is saved as a 'manager' for the created API Backend.
<undefined><li>**apiBackends**</li></undefined>

*   insert: true
*   update: ifManager
*   delete: ifManager

<undefined><li>**apiBookmarks**</li></undefined>

*   insert: true
*   update: own bookmarks
*   delete: own bookmarks

<undefined><li>**Elastic**</li></undefined>

**User**

Users can manage their own bookmarks, view metrics for their API Key. If they insert an API Backend, they become an API Manager for the specific API Backend.
<undefined><li>**apiBackends**</li></undefined>

*   insert: true (becomes Manager)

<undefined><li>**apiBookmarks**</li></undefined>

*   insert: true
*   update: own bookmarks
*   delete: own bookmarks

<undefined><li>**Elastic**</li></undefined>

**Proposed schema change**

In order to support the API Manager (a.k.a. Owner) role, it will be necessary to link a User ID (or user email) to any given API Backend. This can be done via a 'foreign key' type of relationship, basically a field containing the ID of the related entity. Specifically, the following modification is proposed for the apiBackends collection schema:

*   Field: managerIds