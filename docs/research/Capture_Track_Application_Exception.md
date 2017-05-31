
# Exception tracking solution for Meteor Apps

# Kadira
Kadira is a performance monitoring solution, which comes with built-in error tracking solution for Meteor apps. Kadira is issuing the MIT License (MIT).
Kadira helps to capture any error, as well as the context and events related to the error. Therefore it is easy to utilize Kadira to reproduce, identify and fix any issues in a development environment.

Kadira's dashboard is focusing on publication/subscription metrics (response.Time, Method Res.Time, Memory Usage/host, CPU Usage, Sessions/host)
Inside the dashboard there is an error management, which errors are categorized based on types,
- Client errors, method errors, Subscription errors, server crash, and internal server error.
It is possible to group errors based on status,
- New errors, ignored errors, fixed errors, and fixing errors.
- Kadira Debug UI is not open source.
Kadira offers a free plan for 24hrs of data retention. Business plan offers service for 45 hosts and 3 months of data retention for $360 per month. All plans including Error tracking.

# Sentry

A tiny bit of open source code grew to became a full-blown error monitoring tool, that identifies and debugs errors in production.
Sentry's dashboard provides stack traces, with support for source maps, along with detecting each error’s URL, parameters and session information. Each trace can be filtered with app, framework or raw error views. 

- Catch errors in real-time as you deploy
- Every error includes information about software, environment and the users themselves.
- Alert and E-mail notification
- Integration with Github.
- Can track local, development, staging and production environments separately.
- Create organization→projects and→ teams.
- Assign issues to a team member.
- Group issues based on resolved and unresolved.
- Related issues.
- Report about the occurrence of the issue in old version of JavaScript.
- Provide a JSON package.
- Can create release track.

Hobbyists can use Sentry for free, with up to 5,000 events/day. The next pricing step range between $29–$249/month for up to 288,000 events/day, and the last step offers unlimited events for $999/month. 
Sentry is providing a 30-day trial, which enables companies to try sentry and its features. 

# Airbrake

Rackspace’s Airbrake has a web-based dashboard to capture and track the exceptions and errors in an application. The dashboard makes it possible to filter errors based on resolved and unresolved errors, and visualize the information about each error graphically. Each error includes the environment in which it happened, when it was first identified, error type and more. 
- Includes stack trace and metadata for each error, which are grouped by type, users and environment variables.
- Enables to see when each error was fixed and deployed, therefore using the information determine if the error is re-occurring. 
- option to see which team member caused which error, or which one is responsible for fixing them. 
- Integration with Github.

At first a 30-day trial is offered. The price plan starts from $40 per month, which include 25 errors/minute in up to 5 applications. The last step costs $249/month for 200 errors/minute for an unlimited number of applications.
Airbrake is providing a free trial, however there is a need for credit card authorization to try Airbrake and its features.

# Newrelic

Newrelic has a dashboard that gives information about application performance, CPU usage, memory usage, health, error tracking. Newrelic doesn't seem to have a Github integration, neither it looks like an opensource product. 

# Appdynamics

Appdynamics is a huge platform that is used by big organizations. It tracks application errors, database errors, server errors. It is possible to make own dashboards. 
There are not any specific documentation about integration of Appdynamics with Meteor. 
There is not specific mentioning of opensource lincese of Appdynamics. The company provides a trial version that is possible to install it in local machine. 

# Datadog 

Similar to Appdynamics the Datadog provides a free trial, which is a downloadable package specific to OS. Datadog has a Github repository, which is not public. Google search represents an increase in searching demands for datadog comparing to sentry. 

- Monitoring and instrumentation
- Source control and bug tracking
- provides Github integration
- Provides notifications

Dashboards, Datadog offers all high-resolution metrics and events for manipulation and graphing:

- See graphs across sources in real-time
- Slice data by host, device, user (browser)
- Compute rates, ratios, averages or integrals
- Easily customize views, interactively or in code

Datadog has a free and paid versions. The pro-version is 15$ per host per month. 

# ELK stack + open source logger

Another solution would be to install ELK Stack ([ElasticSearch](https://www.elastic.co/), [LogStash](https://www.elastic.co/products/logstash) and [Kibana](https://www.elastic.co/products/kibana)) specificaly to track logs, and use a free software package like [bunyan npm package](https://www.npmjs.com/package/bunyan), or [FiLog Meteor package](https://github.com/FGM/filog). The pros are that Apinf holds complete control and there is no fees, the cons is that we'd have to install and maintain everything. 

# Reference

* https://airbrake.io
* https://docs.sentry.io
* https://newrelic.com/
* https://www.appdynamics.com/
* https://www.datadoghq.com/
* https://medium.com/@jico/the-fine-art-of-javascript-error-tracking-bc031f24c659#.n21umzyjh
* https://stackshare.io/
* http://blog.takipi.com/the-complete-guide-to-error-tracking-tools-rollbar-vs-raygun-vs-sentry-vs-airbrake-vs-bugsnag-vs-overops/
* [How to install elasticsearch, logstash and kibana on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elk-stack-on-ubuntu-16-04)
* [Discussion on 'proper logging meteor'](https://forums.meteor.com/t/proper-logging-with-meteor/31191/1)
