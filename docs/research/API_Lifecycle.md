# API Lifecycle

This document describes common ideas and stages related to API Lifecycle Management.

See also: [APIOps](/APIOps-Builder-Heroes-of-Internet-of-Things-gWgGgv8ja9j) 

## Lifecycle Stages

**Design**

In design stage, the API Owner and Developer consider the overall structure of the API. What information will be accessible? What access control will be provided? The design process also includes initial documentation, in standard formats.
<undefined><li>**Tasks and deliverables**</li></undefined>

*   API description
*   API diagram
*   API business case
*   Stakeholder communication plan

<undefined><li>**Tools and Resources**</li></undefined>

[A Product Managers Guide to Cloud Integrations](http://cloud-elements.com/5-steps-cooperative-apps-2/) 

[Designing a Great Web API](https://www.gartner.com/doc/2319915/designing-great-web-api) 

[API Design Tools List](http://design.apievangelist.com/tools.html) 

**Develop**

The development stage involves programming or extending software platforms to provide access to the application data. This can be done in any platform, programming language, etc., and is dependent on existing infrastructure.  The development process also includes revising of design documentation, to match the constraints of development.
<undefined><li>**Tasks and deliverables**</li></undefined>

*   API specification document in machine format (e.g. RAML)
*   API documentation file (e.g. Swagger)
*   Custom software development 

**Deploy**

Deployment inolves making the API accessible to the general public. This often falls under the jurisprudence of [API Ops](/APIOps-Builder-Backbone-of-Internet-of-Things-gWgGgv8ja9j)  professionals, who manage the infrastructure to ensure functionality, uptime, etc.
<undefined><li>**Tasks and deliverables**</li></undefined>

*   API load balancer configuration
*   Proxy deployment and configuration
*   Analytics configuration (e.g. reporting)

**Revision**

As new business and customer needs emerge, or as the data takes shape, it is often necessary to change the original design. This can be done in such a way that minimises disruption to existing customers, such as API versioning, deprecation notices, and backwards compatibility.
<undefined><li>**Tasks and deliverables**</li></undefined>

*   User needs assessment
*   Data service audit
*   API revision planning
*   User notification

**Retire**

Once the API has served its functional lifespan, it is time for it to be retired. This includes issuing retirement notices to existing customers, re-purposing infrastructure, and planning new business strategy.
<undefined><li>**Tasks and deliverables**</li></undefined>

*   Business model document
*   Stakeholder communication document

## References

*   3scale - [Practical Advice For The Stages Of The API Lifecycle](http://www.3scale.net/2014/11/practical-advice-api-lifecycle-part1/) 
*   [Akana Lifecycle Manager overview](http://www.akana.com/products/lifecycle_manager) 
*   apigee - [API development lifecycle](http://apigee.com/docs/api-services/content/api-development-lifecycle) 
*   [API Lifecycle is Critical for API Management Solutions](http://www.softwareag.com/blog/reality_check/index.php/soa-what/api-lifecycle/) 
*   Dell Boomi [API Management](http://www.dell.com/learn/us/en/uscorp1/press-releases/2015-03-18-dell-boomi-api-management) 
*   CA Technologies - [API Lifecycle Management](http://www.ca.com/us/products/api-management/solutions/api-management-solutions/api-lifecycle-management.aspx) 
*   Nordic APIs - [The Entire API Lifecycle](http://nordicapis.com/envisioning-the-entire-api-lifecycle/) 
*   WSO2 - [Managing an API Lifecycle](https://docs.wso2.com/display/AM110/Managing+an+API+Life+Cycle) 

## IBM Phases
* Preview
* Beta
* Live
