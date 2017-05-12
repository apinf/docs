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

### `PostgreSQL` - Database
Database for storing ACL and Auth data.

## Overview

```

   +---------+
   |         |                  HTTP
   |  APInf  |<----------------------------------------+
   |         |                                         |
   +---------+                                         |
       ^                                               |
       |                                               |
     P |                                               |
     R |                                               |
     O |  HTTP  +--------------+                       |
     X +------->| API Umbrella |                       |
     I |        +--------------+                       |
     E |                                               |
     S |                                               |
       |                                               V
       |  MQTT  +--------------+                +--------------+
       +------->| EMQ (EMQTTD) |                | EMQ-REST-API |
                +--------------+                +--------------+
                       ^                               ^
                       |                               |
                       |       +---------------+       |
                       +------>| PostgreSQL DB |<------+
                               +---------------+

```
