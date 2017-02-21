### Description of problem and its consequences 
API Umbrella Analytics provides us with a drill-down analytics endpoint. However, the date returned is fit to be used in API Umbrella drill-down dashboard. Since our dashboard differs dramatically from the API Umbrella dashboard, we need access to the raw or aggregated ElasticSearch data.
Let's consider this general problem in the context of two questions: how to get data and how to manipulate data
 
#### 1. How to get data

#### Solution options

**The first option is** to send request directly to ElasticSearch as we have at the moment.

#### Pros
1. Don't need to change anything 

#### Cons
1. In the process of learning API-umbrella source code, there was found data can be stored in ElasticSearch, Kylin and PostgreSQL formats.
If API-Umbrella team deprecates ElasticSearch as storage server then we will have to change our realisation of getting data, drawing charts and etc hastily. 
2. Security: The requests from Platform to ElasticSearch not covered by authentication and traffic go by HTTP, not HTTPS i.e. without encryption. In current docker-compose setup that issue "fixed" because requests to ElasticSearch allowed only from provivate network. But in development process our developers still need opened publicity ElasticSearch for work with nightly server.

**The second option is** using REST API.

#### Pros
1. Using REST API to get data we will not depend on format storage. 
1. Security: The requests from Platform to ElasticSearch will have authentication (admin API token) and traffic will be encrypted (HTTPS).

#### Cons
1. Change method to get data
1. Change method to draw charts basing on the specific structure of response.
1. The analytics data can be used only for **API Request Timeline** chart.

#### A suggestion for REST API
The current endpoint `/api-umbrella/v1/analytics/drilldown` can be expanded or to create new endpoint for `analytics`

**Pros**
   - The same as above for using REST API
   
**Cons**
   - The long development process. The API-umbrella features are not controlled by our team. The realisation of the new endpoint is the small part of a total process. The new features must be approved by API-umbrella team and must be included in the release.  


#### 2. How to manipulate data
#### Solution options

**The first option is** to fetch raw data from ElasticSearch
#### Pros 
1. It needs only one request to fetch data for all charts & table

#### Cons 
1. Data will be grouped on client-side
2. If there are too much data then there have a problem to display it to a user. We have already had this situation on APIKA site [Link to issue](https://github.com/apinf/platform/issues/2040). 
3. The most part of raw data will not be reused after. Now the raw data are used in table "Analytics data" which will not be useful with a lot of data. 

**The second option is** group (aggregate) data on the storage side. 

#### Pros
1. It allows decreasing of load on client side
2. Client side will have only needed information
3. Not need to do another data manipulation for using it in charts

#### Cons
1. Need to change realisation of charts and table
2. Additional request for each chart or table
3. Table "Analytics" uses a raw data
 
#### A suggestion for "Analytics data" table

The first one is using for that the separate page "Logging page" for example

**Pros**
   - In future, this page can contain filter and sort options for this data 
   - Display detail information when it's really needed
   - Send request to get raw data when it's really needed

**Cons**
   - Need to create this new page on site
    

The second one is to display only part of raw data. For example, 10 last request and button "Show more" or something else to show all raw data

**Pros**
   - Display detail information when it's really needed
   - It allows decreasing of load on client side partly

**Cons**
   - Additional request to get data when click button "Show more"
   - Need to implement feature "Show more" + UI
