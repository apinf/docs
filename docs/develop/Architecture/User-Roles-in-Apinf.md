# User roles in Apinf

This document describes user roles and user privileges in Apinf.

Our field of users consists of the following hierarchy:

1.  System administrators 
2.  Api owners / administrators (Persona Harri)
3.  Api user / consumers (Persona Minh and Jukka)

**System administrators**

System administrators are the persons handling the functionality of the whole APINF service. It is crucial for the System administrators to see the big picture of the APIS hosted in APINF. This view should include ability to configure certain settings of APIs and disable them if needed. System administrators should also have ability to manage users and their rights.

**Api owners / administrators**

Api Owners are the ones who provide their API to be used in the service by the API consumers.  Owners should have access to a view where they can follow their API usage.  Api owners should also be able to access a view where they can create documentation for their APIs (read + write). Api owners should also have access to a view where they can import already made standardized API documentation to Apinf. Api owners would of course be only able to see the apis they have hosted themselves.

**Api user / consumers **

Api consumers need to be able to access access the the documentation created by API owners (read only). Api users also need access to API keys so they can use the APIs.

**Managing user roles**

It is crucial for the System administrators to be able to easily manage user roles in APINF. This could be done by creating a checkbox in the account creation to provide it a role.  System administrators would also be able to change the users privilege in the user settings.

**Implementation**

One way to implement the different user privileges would be to create a user object called 'privilege' and give it different values according to the users' privilege level.

Or by implementing [](https://github.com/alanning/meteor-roles)https://github.com/alanning/meteor-roles