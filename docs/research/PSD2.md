# PSD2 directive and API management

Users, as often is the case when competition is encouraged, will gain the most. New services will arise in the form of payment methods, intelligence on how to better use each one’s savings, and reusing identification capabilities. The main difference will be that we won’t need wallets anymore (eg: Paypal, PingIt) but we’ll simply ask Whatsapp to connect to our bank account and use our fingerprint to accept a payment request from the colleague next door. 

No need to open 3 different apps, fiddle with 20+ digit long IBAN codes and double check at the cubicle if the payment arrived alright.
Under the new regulation, banks are asked to “open up”, but the burden of developing technical solutions is on the banks themselves, creating the APIs that everyone is talking about. 

The main scope of the PSD2 is to encourage new players to enter the payment market, and it does this by mandating banks to “open up the bank account” to external parties. These Third Party Players (TPP) are divided in two types:

1) Account Information Service Providers (AISPs)
2) Payment Initiation Service Providers (PISPs)

## Who gains benefit?

AISPs are providers that can connect to bank accounts and retrieve information from them. A typical example of this would be an investment recommendation service: the service will be able to see how much money a user is saving each month from his  income, and provide tailored advice based on his spending patterns.

PISPs are players that can initiate payment transactions. This is a radical change in this industry, as currently there are not many payment options that can take money from one’s account and send them elsewhere. Currently we only have (SEPA) Credit Transfers and debit cards, which are both offered only by the account holder’s own bank. In the future we will probably see several different payment options that can move money from the account, without the need of using a wallet (eg: Paypal). The Payment Initiation Service Providers (PISPs) stand to gain the most. The European Banking Authority (EBA) will develop a central register of authorised and registered payment institutions.

**Benefits in brief:**
- competition in the electronic payments market
- online shopping without the need for a credit card
- will help lower charges for consumers and ban "surcharging" for card payments in the vast majority of cases
- a better consumer experience
- better protected against fraud

**Consumer rights:**
- unconditional refund right 
- better protected when the transaction amount is not known in advance
- sending transfers and money remittances outside the EU or paying in non-EU currencies 
- will oblige Member States to designate competent authorities to handle complaints of payment service users and other interested parties. 


## Time frame and requirements

By January 2018, European banks must provide access to customer information (e.g. account balances and details) to AISPs, introducing another entity to the customer relationship. In addition, banks must expose customer information and payments services to Payment Service Providers (PSPs), dis-intermediating the traditional payments model. Most importantly, banks and financial services institutions may also take on the role of AISPs and PSPs themselves. This will all be enabled through the effective use of APIs; setting the scene for the API economy to play a disruptive role in the future of financial services.

The Open Banking Standard is response to PSD2 requirements. Umbrella organisation is Open Data Institute. 

In its report the OB Working Group recommends that:
- bank data, including information about banks’ products and services, should be made available as open data, so that services can be built allowing customers to get more out of their financial relationships (for example, through product comparison services);
- open APIs should be created to enable services to be built using bank and customer data. These would include open data about products and services as well as shared data about bank transactions that individuals or businesses can choose to share themselves through secure and controlled means.

## Security

PSD2 requires payments services providers to implement strong customer authentication  (SCA) when accessing payment accounts online, initiating electronic payments and through remote channels that have a risk of payment fraud. SCA is based on the use of the use of two or more elements that include Knowledge, Possession and Inherence and the authentication mechanism must work in a range of 
payment channels that include web and mobile. 

Additionally, transaction details, e.g. payee and transaction amount information, need to be presented to the customer as part of the strong authentication mechanism. This has to be achieved in a manner that supports the “development of user-friendly, accessible and 
innovative means of payment” (read APIs).

**All the major security related requirements touch us at some level:**

- Mandatory use of ‘strong customer authentication’: proposing the requirement that (at a minimum) what is known by many as two factor authentication (“2FA”) is carried out for remote / online / electronic payment transactions. **this means that if we do the authentication, we must comply to this requirement**  
- The establishment of formal internal security frameworks to assess and report on operational matters expressly including security issues. **our platform is hosted by our client, what that means here? As SaaS we are affected directly**
- Security incident reporting: both to regulators and customers under certain circumstances. **As SaaS we are affected directly**
- Mandatory security assessment reporting to regulators: on security measures and their effectiveness. ***As SaaS we are affected directly**
- Increased role of EBA and ECB: on setting the security protocols, technical standards and policies to be followed in connection with the above obligations. **we need to dig these standards from EBA sites and regulations** 

For auth purposes (open source) https://www.powerauth.com/ seems to be PDS2 compatible and is APIs based auth solution. We probably need to support this kind of extensive auth frameworks or then decide that others handle all authentication. Nevertheless it's clear that all our data (internal too) has to be https. 
