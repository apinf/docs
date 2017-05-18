# EMQ <-> APInf architecture

This document describes architecture and the way how EMQ is being integrated to work with APInf.

## Components

### [`APInf`](https://github.com/apinf/plaform) - App
API Management Platform

### [`API-Umbrella`](https://github.com/NREL/api-umbrella) - Proxy
API Management Proxy

### [`EMQ`](https://github.com/emqtt/emqttd) - Proxy
Erlang MQTT Broker. Uses [`emq-auth-pgsql`](https://github.com/emqtt/emq-auth-pgsql) plugin for Authentication and ACL with PostgreSQL DB.

### [`EMQ-REST-API`](https://github.com/apinf/emq-rest-api) - REST APi
SailsJS REST API server, is a middleware that can handle map and route
data from `EMQ`'s data store which is `PostgreSQL`. It was created due
to lack of REST API on `EMQ` side. Uses [`sails-postgresql`](https://github.com/balderdashy/sails-postgresql) adapter
to communicate with PostgreSQL DB.

#### Schemas
DB schemas in EMQ-REST0-API pretty much replicate initial schemas provided in [emq-auth-pgsql](https://github.com/emqtt/emq-auth-pgsql) with certain additions.

##### `emq-user`
```js
module.exports = {
  attributes: {
    username: {
      type: 'string',
      unique: true,
    },
    password: {
      type: 'string',
    },
    is_superuser: {
      type: 'boolean',
      defaultsTo: false
    },
    salt: {
      type: 'string'
    }
  }
}
```

##### `emq-acl`

```js
module.exports = {
  attributes: {
    id: {
      type: 'string',
    },
    allow: {
      type: 'integer',
    },
    ipaddr: {
      type: 'string',
      size: 60
    },
    username: {
      type: 'string',
      size: 100
    },
    clientid: {
      type: 'string',
      size: 1024
    },
    access: {
      type: 'integer'
    },
    topic: {
      type: 'string',
      size: 100
    },
    proxyId: {
      type: 'string',
      size: 100
    }
  }
};
```

### `PostgreSQL` - Database
Database for storing ACL and Auth data.

## Overview

```

   +---------+
   |         |
   |  APInf  |<----------------------------------------+
   |         |                                         |
   +---------+                                         |
       ^                                               |
       |                                               |
       |                                               |
       |                                               |
       |        +--------------+                       |
       +------->| API Umbrella |                       |
                +--------------+                       |
                        ^                              |
---+        HTTP        |                              |
 A |--------------------+                              |
 P |                                                   |
 I |                                                   |
 s |--------------------+                              |
---+        MQTT        |                              |
                        V                              V
                +--------------+                +--------------+
                | EMQ (EMQTTD) |                | EMQ-REST-API |
                +--------------+                +--------------+
                       ^                               ^
                       |                               |
                       |       +---------------+       |
                       +------>| PostgreSQL DB |<------+
                               +---------------+

```

## Data flow between EMQ and APInf

APInf stores ACL data (including API proxy backend) in Meteor MongoDB collection `proxyBackends` when ACL rules added for the first time. APInf uses a package for dynamic HTML form construction called `[aldeed:autoform](https://github.com/aldeed/meteor-autoform)`. It takes care of `INSERT`, `UPDATE` and `DELETE` of items in Meteor collection.

`aldeed:autoform` has a number of pre-defined hooks which are called when certain event occurs. Those [hooks](https://github.com/apinf/platform/blob/develop/proxy_backends/client/form/autoform.js) which are used by `proxyBackendsForm` collection are: `before insert`, `before update`, `onSuccess` and `onError`.

##### `before insert`

If `EMQ` is selected as a proxy backends for an API, we iterate though all ACL rules to be added and attach unique identifier (`id`) & proxy id related to it (`proxyId`).

##### `before update`

Almost the similar pattern as in `before insert` hook, but additional check is needed before attaching `id` and `proxyId` in order to make sure either new ACL rule was added in addition to existing ones (in that case attaching `id` and `proxyId` is needed) or only edit already exiting rules.

##### `onSuccess`

When `before insert` and `before update` passed, we can push ACL rules to `EMQ-REST-API` via `POST` request. `emqAclRequest` meteor method is called which handles `EMQ-APInf` talking.

###### `Meteor.call('emqAclRequest', method, proxyId, rules)`

- method - `String` - HTTP method, either `POST` or `PUT`
- proxyId - `String` - related API proxy backend - `String`
- rules - `Array` - list of ACL rules to update or insert

##### `onError`

Throws an error when any submit operation fails.
