# Takeaways from the FIWARE Summit (Utrecht, Amsterdam - 2017)

## Integration
The current progress towards integrating APInf and FIWARE includes:
- [Monetization via FIWARE Business Ecosystem](https://github.com/FIWARE-TMForum/Business-API-Ecosystem#introducction)
- Analytics from API Umbrella
- [Analytics dashboard with FIWARE WireCloud](http://fiwaretourguide.readthedocs.io/en/latest/creating-application-dashboards/introduction/)
- API Management from APInf
- [Data Catalogue with CKAN](http://fiwaretourguide.readthedocs.io/en/latest/publishing-open-data-in-fiware/introduction/)
- Payments via Paypal


The above components have been shown to work together. However, the user experience is somewhat fragmented, since the each component has it's own user interface.

## Strategy
In order to move towards a more cohesive user experience, it might mean shifting our development to work directly with FIWARE components. This could include 
- writing CKAN extensions for APInf components (such as feedback and backlog)
- using WireCloud to build Analytics Dashboard components

By integrating more tightly with the FIWARE components, we could accellerate our development process. For example, we would almost immediately gain a functional monetization component to support our business case.

## Technology
The principle FIWARE components, related to our business model, are written with Python (backend), JavaScript (frontend), HTML, and CSS. Our developers already have JavaScript proficiency, as well as familiarity with other web standards. We would need more time to work with the FIWARE components' source code, as well as gaining practical experience with Python web frameworks (Flask, and Django).

## Additional benefits
The FIWARE ecosystem already contains many beneficial components that would support our business process, including:

- [Identity management](https://catalogue.fiware.org/enablers/identity-management-keyrock)
- [Authorization management](https://catalogue.fiware.org/enablers/authorization-pdp-authzforce)
- [Tooling for continuous delivery, high availability, etc.](https://catalogue.fiware.org/enablers/software-deployment-configuration-sagitta)
- [Components to process real-time (or just in time) data sources](http://fiwaretourguide.readthedocs.io/en/latest/real-time-processing-of-context-events/introduction/)
- [Standards](https://github.com/Fiware/dataModels) and tooling to process data from a wide variety of [IoT devices](http://fiwaretourguide.readthedocs.org/en/latest/connection-to-the-internet-of-things/introduction/)

Adopting the FIWARE components could save APInf considerable resources, in terms of developer time and business capital. We could focus our efforts more narrowly on our unique value, rather than spreading ourselves widely trying to cover such a wide landscape.
