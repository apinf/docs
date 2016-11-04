# Hackathon goals/ideas

## User accounts
 - Emqttd only cares about clients. A client is any device or program.
 - Each client is uniquely identified by a clientid. They must never repeat on the same mqtt server
 - we need to store client ids, and assoaciated passwords, along with access control rules in a database.
 - Access control rules dictate whether a client can publish and/or subscribe to a emqttd topic.

 Authentication and access control are implemented by various emqttd plugins. emqttd_plugin_postgres and emqttd_plugin_mongo are good candidates.
 We can store the client ids, passwords and acls in one of these databases and use the plugins directly.

 On Apinf side, we need to create a dashboard where a user can register their client ids, and control acls for their devices.
 Changes made here must be propogated to the database. All writes happen from here, emqttd only reads this information.

## MQTT analytics
- integration with Apinf (Dashboard)
- dashboard built into emqtt (upstream contribution)
- streaming as MQTT topic
  - Ingest via, e.g., NodeRed, JavaScript, etc.

### Storing MQTT analytics
  - emqtt plugin repository https://github.com/apinf/emqttd_plugin_apinf
  - Development TODOs:
    - [x] Store data in Elasticsearch instead of MongoDB
    - [ ] Specify selected elasticsearch library for elarng in plugin dependencies

###  MQTT analytics structure
Fields:
- time: timestamp
- type: event type
  - connect
  - disconnect
  - subscribe
  - unsubscribe
  - session created
  - session terminated
  - session subscribed
  - session unsubscribed
  - message publish
  - message delivered
  - client ID
  - event payload:
    - This depends on the kind of event. For subscribe, this can be the list of topics
  for connect, this can be the username
  for session termination: messages pending to be delivered.
    - [Example data set](https://gist.github.com/frenchbread/d20fc93906c2d4d6f66857e99d5e6f4d)

## Erlang elasticsearch plugin(s) or libraries
- https://github.com/joaohf/emqttd_elasticsearch
  - This looks incomplete, and makes its own assumptions
- https://github.com/snorecone/elasticsearch-erlang/blob/master/src/elasticsearch.erl
- https://github.com/zalando/esio

# User experience
Our information/data is stored as ['time series'](https://en.wikipedia.org/wiki/Time_series) observations.

## Time series visualization
We need wireframes, based on existing open-source time series chart libraries.

## Time series charts libraries
- [Metrics Graphics](http://metricsgraphicsjs.org/)
- [Rickshaw](http://code.shutterstock.com/rickshaw/)
- [Facette](https://facette.io/)
