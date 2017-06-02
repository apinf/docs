# Takeaways from the FIWARE Summit (Utrecht, Amsterdam - 2017)

## Integration
The current progress towards integrating APInf and FIWARE includes:
- Monetization via FIWARE Business Ecosystem
- Analytics from API Umbrella
- Analytics dashboard with FIWARE WireCloud
- API Management from APInf
- Data Catalogue with CKAN
- Payments via Paypal


The above components have been shown to work together. However, the user experience is somewhat fragmented, since the each component has it's own user interface.

## Strategy
In order to move towards a more cohesive user experience, it might mean shifting our development to work directly with FIWARE components. This could include 
- writing CKAN extensions for APInf components (such as feedback and backlog)
- using WireCloud to build Analytics Dashboard components

By integrating more tightly with the FIWARE components, we could accellerate our development process. For example, we would almost immediately gain a functional monetization component to support our business case.

## Technology
The principle FIWARE components, related to our business model, are written with Python (backend), JavaScript (frontend), HTML, and CSS. Our developers already have JavaScript proficiency, as well as familiarity with other web standards. We would need more time to work with the FIWARE components' source code, as well as gaining practical experience with Python web frameworks (Flas, and Django).
