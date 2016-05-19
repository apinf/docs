# API design and management tools

The idea of this document is to provide information about different API design and management tools.

## Audit Template

This template is designed to provide a simple to use template when auditing the different products. You may want to look into following things:

### Overview
General background information about the product and the company behind it.

### Common features
Determine whether a given solution supports common features, such as:

- Analytics - visual display of API metrics, such as latency, number of requests, etc.
- Availability - ensure API is running to meet SLAs, handle errors, offer fallback for failure
- Community - involving community members in the API planning and management process. E.g. roadmap. backlog, feedback
- Deployment - options for deploying and managing the platform. E.g. Docker, SaaS, etc.
- Documentation - support for displaying and browsing API documentation
- Load management - handle API traffic, including rate limiting and load balancing
- Monetization - support for financial streams, billing, and other API business models
- Sandboxing - allow people to test the API endpoints without any additional software
- Security - support for authentication and authorization. E.g. sign-in, permissions, roles
- Testing - test API endpoints, data structure, etc. to make sure it conforms to expectations
- Transformation - ability to map, or transform, data between sources. E.g. rewrite request/response data.

### Licensing & Openness
How is the product licensed?
What price point does it fall into?
Is the product open source?
What are the tools for community involvement?

### Type of product
Is the product a proxy, agent or a hybrid? What can you find about the technology behind the manager?

### Lifecycle management
Is the tool only a manager or does it have features that cater for other parts of API lifecycle. How does it work? What other features does it have?

### Programming languages / technologies
Which programming language(s) / technologies  does the product base on?

### UI
If possible provide a screenshot of the UI and some additional information about usability and design.

### Strengths
What are the strengths of this particular product? What can we learn from this product?

### Weaknesses
What features were not so good in the product?

# Solutions

## 3scale
- [Pricing](https://www.3scale.net/pricing/)

## API Blueprint

Format/specification and tools for API design, documentation, and development.

[Website](https://apiblueprint.org/)

## Apiary
- [Website](https://apiary.io/)
- [open-source](https://github.com/apiaryio)

Apiary is an API design tool, that places design before development (design-first). It uses a human readable description format, called API Blueprint, which the company maintains as an open-source project.

It is possible up a simple mock-server, based on the API description file. Collaborators can view the description file on Github, provide feedback, and participate in the design before committing to full-scale development.

Apiary also maintain several command line tools for API testing and validation.

### Common features
Apiary platform supposts, at least, the following features.


- Community - Apiary features center around Github, which allows social interaction around the API design process
- Documentation - Apiary designed and maintained their own API documentation specification: API Blueprint
- Sandboxing - Apiary provides a basic mock-server scaffold
- Testing - Apiary has a traffic inspector tool that can be used for testing/debugging. They also provide a open-source tools for testing and validating API structure and responses.

### Licensing & Openness
The primary Apiary platform is proprietary. However, Apiary does maintain an assortment of open-source utilities related to API design and testing.

### Type of product
Apiary is primarily a design tool, with some basic testing functionality.

### Lifecycle management
The Apiary tool would be primarily relevant in the discovery, design, and revision stages of the API lifecycle.

### Programming languages / technologies
It is difficult to say what the proprietary components of Apiary consist of. However, the open-source tools seem to be based around CoffeeScript, YAML, and C++.

### UI
![Apiary mockup](https://apiary.a.ssl.fastly.net/assets/5e307d6a2bbfc470a609995bd8881007.png)

### Strengths
Simple, human-focused design tool. Community oriented.

### Weaknesses
- Proprietary platform.
- Designed own API description format.

## Apigee

### Overview
Apigee is one of the most popular API platforms used currently. Apigee provides the free Developer environment ([developer.apigee.com](https://developers.apigee.com/) )  and then the commercial environment. The differences can be found on the [feature comparison list](http://apigee.com/docs/developer-vs-edge)http://apigee.com/docs/developer-vs-edge

### Licensing & Openness
Mostly commercial, partially open. According to developers.apigee.com  "_Apigee contributes several open source projects and tools including  apigee-127, Volos NPMs, Apache Usergrid, SDKs, and many other tools and utilities for API deployment and documentation_. "

### Type
Apigee provides a proxy environment.

### Lifecycle management

### Language
I couldn't find what programming language Apigee bases on.

### UI
Screenshot of their dashboard and the traffic statistics.
![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_XXSctw9HGUO_p.373935_1429881527565_screenshot-blog apigee com 2015-04-24 16-18-00.png)

### Strengths
- Apigee's monitoring tools are really powerful and well made.

### Weaknesses
- Very unclear technical documentation. Pricing is also very unclear.

## ApiAxle
[Website](http://apiaxle.com/)
[Documentation](http://apiaxle.com/docs.html)
[Sourcecode](https://github.com/apiaxle/apiaxle)

## Axway
Proprietery engagement platform with [API Management](https://www.axway.com/en/enterprise-solutions/api-management/api-management-solutions) component.

## Akana

## CA Layer7

## Kong (Mashape)
- [Website](https://getkong.org/)
- [Sourcecode](https://github.com/Mashape/kong)

### Overview
Secure, Manage & Extend your APIs and Microservices
The open-source management layer for APIs, delivering high performance and reliability.

![Kong diagram](https://getkong.org/assets/images/homepage/diagram-right.png)

### Features
Determine whether a given solution supports common features, such as:

[Plugins](https://getkong.org/plugins/)
- Analytics - Plugins (Galileo), Logging
- Availability - Failure Detection & Recovery
- Community - Gelato
- Deployment - Cloud, on-premise, hybrid (Docker, ...)
- Documentation - Gelato
- Load management - Traffic Control (Rate Limiting,...)
- Monetization - ?
- Sandboxing - ?
- Security - Security (ACL, CORS,...)
- Transformation - Request, Response transformations and Correlation ID

### Licensing & Openness
Apache License 2.0

#### Community involvement
Kong has [multiple channels for community engagement](https://getkong.org/community/). In addition, there are many [community resources and tools](https://github.com/Mashape/kong#community-resources-and-tools)


### Type of product
API Proxy

### Lifecycle management
Designed as a proxy for existing API backends. Offers tools for the management lifecycle stage.

### Programming languages / technologies
- [Lua language sourcecode](https://github.com/Mashape/kong#development)

### UI
https://www.mashape.com/assets/images/home/galileo/screenshot-1x.png

3rd party packages https://github.com/PGBI/kong-dashboard
https://raw.githubusercontent.com/PGBI/kong-dashboard/master/screenshots/apis_list.jpg

### Strengths
Plugin architecture

### Weaknesses
Not fully open source, some plugins are commercial. E.g. visual analytics requires commercial subscription.

## MuleSoft Anypoint

### Overview
Mulesofts product Anypoint offers a manager that enables to manage users, traffic, SLAs, and secure the APIs.

### Licensing & Openness
Commercial. Target audience enterprises.

### Type

### Lifecycle management

### Programming languages / technologies

### UI
![MuleSoft screenshot](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_XXSctw9HGUO_p.373935_1429884749984_TN-142234_MuleSoft-Anypoint-API-Manager.jpg)

### Strengths

### Weaknesses

## IBM API Management

### OpenRepose
[Website](http://www.openrepose.org/)

## Oracle SOA

## Mashery API Management
http://www.mashery.com/api-management

### Overview
> The complete SaaS-based API Management solution deployed any way you want it: in the cloud, on-premise or hybrid.

*Note:* Tibco and Mashery merged recently.

### Features
Determine whether a given solution supports common features, such as:

- Analytics - API Analytics
- Availability - API Traffic
- Community - API Portal
- Deployment - Cloud and Local
- Documentation - API Portal
- Load management - API Traffic
- Monetization - ?
- Sandboxing - API Packager
- Security - API Security
- Transformation - ?

### Licensing & Openness
- Commercial license costs 99$/m (difficult to find price model)
![Mashery price model screenshot](http://i1.wp.com/blogs.perficient.com/delivery/files/2016/02/MasheryPricingModel.jpg?ssl=1)

- No open source offering.

### Community involvement
http://developer.mashery.com/
The Mashery API Network allows you to register once and gain access to 40+ Mashery-powered APIs with a single sign-on.

### Type of product
Proxy
http://www.developereconomics.com/api-management-tools-how-to-find-the-one-for-you/

### Lifecycle


### Programming languages / technologies
Which programming language(s) / technologies  does the product base on?

### UI
![screenshot](http://support.mashery.com/files/method_drill_down_screenshot.jpg)

### Strengths
- "Inventor of API Management"
- "First cloud-based & multitenant"
- Full deployment flexibility
- "First PCI-compliant platform"

### Weaknesses
Difficult to find out the Unique Selling Proposition (i.e. what they offer).
No screenshots. No clear pricing model.

## Mashery API Power Tools
- [Open-source documentation and SDK generator](http://mashery.github.io/)
- [API Catalog](http://dev.mashery.com/apis#)

## Microsoft’s Azure API Management

## WSO2
### Overview
http://wso2.com/cloud/api-cloud/
http://wso2.com/products/api-manager/

Offers a portfolio of products around API management, analytics, IoT, machine learning, etc.
[sourcecode](https://github.com/wso2/)  

> The platform is made up of over 20 products covering all major  categories from integration and API management to identity and  analytics.

### Features
Determine whether a given solution supports common features, such as:

- Analytics - integrates with the WSO2 analytics platform, and provides out of the box reports and alerts, giving you instant insight into APIs behavior.
- Availability -
- Community - Developer Portal
  - [> 5,000 questions on Stack Overflow](http://stackoverflow.com/questions/tagged/wso2)
- Deployment -  public, private clouds, and hybrid implementations - Easily Deployable in Your Enterprise
- Documentation - APIs can be documented, tagged, categorized, and tested right from the store itself
- Load management - Manage and scale API Traffic
- Monetization - Monitor and Monetize
- Sandboxing - Publish APIs and Govern API Use
- Security - Control Access and Enforce Security
- Transformation - ?

### Licensing & Openness
100% open source
Apache License 2.0

Community involvement
https://docs.wso2.com/display/AM1100/Getting+Started

Open Process
https://github.com/wso2/product-apim/tree/master/design-docs

SaaS offering
From 100$ (starter) to 10 000$ (extra-large)

### Type of product
?
Probably proxy or hybrid

### Lifecycle management
Design and Prototype APIs
Import Swagger 2.0 definition

### Programming languages / technologies
Java based.

### UI
![screenshot](https://nadeesha678.files.wordpress.com/2015/08/tiers.png)
Pluggable, Extensible, and Themeable

### Strengths
Full open source, open development.
Big community, mature company backing the product.

### Weaknesses
Analytics are fragmented across multiple screens.
Java.

Located in US
Docker image
http://wso2.com/products/api-manager/
https://github.com/wso2/product-apim

## Node Red

Graphical data-flow modeler.

[Website](http://nodered.org/)

# Resources
http://www.apiacademy.co/
http://apigee.com/about/resources

# References
- [API Management Tools: How to find the right one for you](http://www.developereconomics.com/api-management-tools-how-to-find-the-one-for-you/)
- [How does Mashery make money? - Quora](https://www.quora.com/How-does-Mashery-make-money)
