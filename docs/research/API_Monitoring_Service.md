# Monitoring service
|                               | Icinga          | Prometheus                                                                                                                                                         | Zabbix                                                                                                                      |
|-------------------------------|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| Category                      |                 | Time series ([TSDB](https://en.wikipedia.org/wiki/Time_series_database) ) optimized for handling time series data, arrays of numbers indexed by time (a datetime). | Functional database model, or the functional model for short, is different from but complementary to, the relational model. |
| Fully open-source             | Yes             | Yes                                                                                                                                                                | Yes                                                                                                                         |
| License                       | GPL 2.0         | Apache 2.0                                                                                                                                                         | GPL 2.0                                                                                                                     |
| Installation                  |                 | [Precompiled binaries](https://prometheus.io/download/) available.                                                                                                 | [Distribution packages](http://www.zabbix.com/download) available for Debian, CentOS, RHEL, Oracle Linux, and Ubuntu        |
| Database                      |                 | Own database optimized for time series data                                                                                                                        | RDBMS (MySQL, PostgreSQL, Oracle, sqlite)                                                                                   |
| Discovery                     |                 | DNS, consul, kubernetes, etc                                                                                                                                       | Agents on nodes, snmp, etc.                                                                                                 |
| Agent platform support        |                 |                                                                                                                                                                    | FreeBSD, HP-UX, Linux, NetBSD, OpenBSD, Solaris, Windows                                                                    |
| Data-collection               |                 | Pull/Push (preferable pull)                                                                                                                                        | Pull/Push (preferable pull)                                                                                                 |
| Communication protocol        |                 | HTTP                                                                                                                                                               | TCP                                                                                                                         |
| Admin REST API                | Yes             | No                                                                                                                                                                 | Yes                                                                                                                         |
| Admin UI | Yes (plugin) | No  | Yes|
| Monitoring UI                 | Yes             | No                                                                                                                                                                 | Yes                                                                                                                         |
| Analytics UI                  | Yes (plugin)    | Yes, Grafana                                                                                                                                                       | Yes                                                                                                                         |
|  Analytics API                 |   | Yes | Yes |
| Language(s) | C++, PHP | Go | C, PHP |
| Notifications                 | UI, e-mail, SMS | Email, PagerDuty, Slack                                                                                                                                            | UI, e-mail,                                                                                                                 |
| Query language                |                 | own functional expression language                                                                                                                                 | SQL                                                                                                                         |
| Passive moitoring (agentless) | yes             |                                                                                                                                                                    | yes                                                                                                                         |
| Active monitoring (agent)     | yes             | yes                                                                                                                                                                | yes                                                                                                                         |
| Linux system monitoring       | yes             | yes                                                                                                                                                                | yes                                                                                                                         |
| Windows system monitoring     | yes             |                                                                                                                                                                    | yes                                                                                                                         |
| Server load                   | yes             | yes                                                                                                                                                                | yes                                                                                                                         |
| Network I/O                   | yes             | yes                                                                                                                                                                | yes                                                                                                                         |
| Disk I/O                      | yes             | yes                                                                                                                                                                | yes                                                                                                                         |
| Web service monitoring        | yes             |                                                                                                                                                                    | yes                                                                                                                         |
| Database service monitoring   | yes             |                                                                                                                                                                    | yes                                                                                                                         |                                                                                | 


# Sources
## Icinga
- Passsive monitoring: [general service monitoring](https://docs.icinga.com/icinga2/latest/doc/module/icinga2/toc#!/icinga2/latest/doc/module/icinga2/chapter/service-monitoring#service-monitoring-general)
- [web service monitoring](https://docs.icinga.com/icinga2/latest/doc/module/icinga2/toc#!/icinga2/latest/doc/module/icinga2/chapter/service-monitoring#service-monitoring-database)
- [Linux service monitoring](https://docs.icinga.com/icinga2/latest/doc/module/icinga2/toc#!/icinga2/latest/doc/module/icinga2/chapter/service-monitoring#service-monitoring-linux)
- [Windows service monitoring](https://docs.icinga.com/icinga2/latest/doc/module/icinga2/toc#!/icinga2/latest/doc/module/icinga2/chapter/service-monitoring#service-monitoring-windows)
- [Database service monitoring](https://docs.icinga.com/icinga2/latest/doc/module/icinga2/toc#!/icinga2/latest/doc/module/icinga2/chapter/service-monitoring#service-monitoring-database)
- [web service monitoring](https://docs.icinga.com/icinga2/latest/doc/module/icinga2/toc#!/icinga2/latest/doc/module/icinga2/chapter/service-monitoring#service-monitoring-web)

## Prometheus
- [Analytics API](https://prometheus.io/docs/querying/api/)
- [Query language](https://prometheus.io/docs/querying/basics/)

## Zabbix


# Conclusions
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



Based on pros and cons of both tool and target that was set by story/research [“Study what monitoring service to be used”](https://github.com/apinf/platform/issues/966), recommendation to use Prometheus as modern tool with good architecture (modules), great performance and [great documentation](https://prometheus.io/docs/introduction/overview/).

Prometheus is a open source monitoring system that includes built-in and active scraping, storing, querying, graphing, and alerting based on time series data. 

**Architecture**: Prometheus servers run independently of each other and only rely on their local storage for their core functionality: scraping, rule processing, and alerting.

**Data model**: Most important aspects is its multi-dimensional data model ([OpenTSDB](http://opentsdb.net/)) along with the accompanying query language. This allows easy filtering, grouping, and matching by these labels via in the query language.

**Scalable**: Hundreds of thousands of samples per second. Millions of time series. On a single monitoring server (running many servers is easy too).

**Storage**: Prometheus own database optimized for time series data that can allow work with millions of time series.

**Discovery**: targets are discovered via service discovery or static configuration (DNS, [consul](https://www.consul.io/), [kubernetes](http://kubernetes.io/), etc.).

**Visualization**: multiple modes of graphing and dashboarding support ([Graphana](http://grafana.org/), [PromDash](https://github.com/prometheus/promdash), etc.).

**Alerting**: Separated into two parts. Alerting rules in Prometheus servers send alerts to an Alertmanager. The Alertmanager then manages those alerts, including silencing, inhibition, aggregation and sending out notifications via methods such as email, PagerDuty and Slack.

**Client libraries**: Go, Java, Ruby, Python, Node.js, [etc](https://prometheus.io/docs/instrumenting/clientlibs/).
