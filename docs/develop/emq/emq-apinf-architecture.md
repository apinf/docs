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
 I |--------------------+                              |
 s |        MQTT        |                              |
---+                    V                              V
                +--------------+                +--------------+
                | EMQ (EMQTTD) |                | EMQ-REST-API |
                +--------------+                +--------------+
                       ^                               ^
                       |                               |
                       |       +---------------+       |
                       +------>| PostgreSQL DB |<------+
                               +---------------+

```
