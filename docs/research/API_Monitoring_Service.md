# Monitoring service

Research focused on compare [Zabbix](http://www.zabbix.com/) and [Prometheus](https://prometheus.io/) because they the most fit for target from list of tools and based on feedback from previous research. In research ignored tools that is based on Hadoop and HBase for avoid complex setup and resource hungry maintenance. 

|                             | Prometheus                                                                                                                      |     Zabbix                                                                                                                       | 
|-----------------------------|---------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------| 
| Category                    | Time series ([TSDB](https://en.wikipedia.org/wiki/Time_series_database) ) optimized for handling time series data, arrays of numbers indexed by time (a datetime).                     | Functional database model, or the functional model for short, is different from but complementary to, the relational model.| 
| Open Source                 | Yes                                                                                                                             | Yes                                                                                                                        | 
| License                     | Apache 2.0                                                                                                                      | GPL v2                                                                                                                     | 
| Language stack              | Go lang                                                                                                                         | C and WebUI based on PHP                                                                                                   | 
| Setup                       | [Easy](https://prometheus.io/docs/introduction/install/)                                                                                                                         | Many ways [depends on platform](https://www.zabbix.com/documentation/2.2/manual/installation/getting_zabbix)               | 
| Learning curve              | Simple                                                                                                                          | Complex, even have certification  http://www.zabbix.com/training_professional.php                                          | 
| DataBase                    | Own database optimized for time series data                                                                                     | RDBMS (MySQL, PostgreSQL, Oracle, sqlite)                                                                                  | 
| Discovery                   | DNS, consul, kubernetes, etc...                                                                                                 | Agents on nodes, snmp, etc.                                                                                                | 
| Collect data method         | Pull/Push (preferable pull)                                                                                                     | Pull/Push (preferable pull)                                                                                                | 
| Communication protocol      | HTTP (humal radable and protobuf)                                                                                               | Own tcp-based                                                                                                              | 
| Visualization               | Modules (Grafana, etc.) or own simple UI                                                                                        | Own UI                                                                                                                     | 
| Alerting                    | Modules (Email, PagerDuty, Slack, etc...) and very flexible rules.                                                              | Own plugin                                                                                                                 | 
| Flexible                    | [Modular and composable](https://prometheus.io/docs/introduction/overview/#components)                                                                                           | Have plugins                                                                                                               | 
| Query language              | Flexible https://prometheus.io/docs/querying/basics/                                                                            | Flexible (SQL)                                                                                                             | 
| WEB admin for confuguration | Not (text file)                                                                                                                 | Yes                                                                                                                        | 
| Plugins for metrics         | A lot of exporters                                                                                                              | A lot of monitoring scripts                                                                                                | 


## Zabbix

### Pros:

* Open source https://zabbix.org/wiki/Get_Zabbix.
* Web interface for configuration.
* Alerts in e-mail and/or SMS.
* Native agent available on Windows, OS X, Linux, FreeBSD, etc.
* A lot of monitoring scripts. https://github.com/monitoringartist/zabbix-community-repos 

### Cons:

* Documentation (not good). Hard find details (in opposite Prometheus documentation).
* Uses a relation databases for store time series data (like MySQL). DB schema https://www.zabbix.org/wiki/File:Zabbix_db_schema-2.4.3-MySQL.svg.

## Prometheus

### Pros:

* Open source https://github.com/prometheus/prometheus.
* Time series DB (performance optimized for time series data).
* Easy setup: single binary [just drop on server](https://prometheus.io/docs/introduction/getting_started/#downloading-and-running-prometheus) .
* Alerting in Email, PagerDuty, Slack, etc. and very flexible rules.
* A lot of exporters https://prometheus.io/docs/instrumenting/exporters. 
* Configuration files that make setup by Chef or Ansible very flexible.
* Visualization works by modules, can choose Graphana, PromDash or write own working with query language. 

### Cons:

* Do not have web interface for configuration. But that make easy setup by Chef or Ansible.



Based on pros and cons of both tool and target that was set by story/research [“Study what monitoring service to be used”](https://github.com/apinf/api-umbrella-dashboard/issues/966), recommendation to use Prometheus as modern tool with good architecture (modules), great performance and [great documentation](https://prometheus.io/docs/introduction/overview/).

Prometheus is a open source monitoring system that includes built-in and active scraping, storing, querying, graphing, and alerting based on time series data. 

**Architecture**: Prometheus servers run independently of each other and only rely on their local storage for their core functionality: scraping, rule processing, and alerting.

**Data model**: Most important aspects is its multi-dimensional data model ([OpenTSDB](http://opentsdb.net/)) along with the accompanying query language. This allows easy filtering, grouping, and matching by these labels via in the query language.

**Scalable**: Hundreds of thousands of samples per second. Millions of time series. On a single monitoring server (running many servers is easy too).

**Storage**: Prometheus own database optimized for time series data that can allow work with millions of time series.

**Discovery**: targets are discovered via service discovery or static configuration (DNS, [consul](https://www.consul.io/), [kubernetes](http://kubernetes.io/), etc.).

**Visualization**: multiple modes of graphing and dashboarding support ([Graphana](http://grafana.org/), [PromDash](https://github.com/prometheus/promdash), etc.).

**Alerting**: Separated into two parts. Alerting rules in Prometheus servers send alerts to an Alertmanager. The Alertmanager then manages those alerts, including silencing, inhibition, aggregation and sending out notifications via methods such as email, PagerDuty and Slack.

**Client libraries**: Go, Java, Ruby, Python, Node.js, [etc](https://prometheus.io/docs/instrumenting/clientlibs/).
