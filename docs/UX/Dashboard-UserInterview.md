###User Interview about Dashbaoard and Analytics Usage
    User: Tuukka Hastrup
    Date: 20.06.2016

    * List of my APIs
    * Information about If everything is OK, No. of Error
    * Usage: Comparison with last day, same day of last week, same day of last month: if usage pattern is normal --> Line chart
    * (like Dipor) for each API, separate analytics (in serparate tabs) and also an overview chart of all APIs
    * Time range of usage: daily (how it differs from last days); analytics of last 7 days.
    * (bug of API) API not added by owner showed up
    * Timestampt needs to be real date and time
    * General: Amount of usage, amount of errors and amount of average response time is more impotant to know.
    * how user information can be show? if therer is an API Key, show it or associated user. If no API key is available, show the website that is making the request. From here, we can use the referer and origin headers of the usage. they include the information from the website. If none of those are available, show the IP address.
        (API key showing is really special case. It is not really needed) --> show them in a column
        It depends on the request: some doesn't have the API key, some doesn't have the URL. If the abve are not available --> IP Address
    * don't need backend information
    * Good to have control option in chart, table and world map, s.t. changing something in one interface causes changes in other 2.
    * It is good to have a date picker to manually entry the times. (to be able to select date, week, month or year)
    * Chart is more important than hitmap of world map. I'm not sure if I need the world map at all. it is not so important who is the user of the API, this s very specific analytics.
    * Idea about Unique Users and Average Response Time: under overview information, link to see details. Takes user to a different page to show details on both of these catagories.
    * Line curves to represent the time and the usage will also be good.
    * The default view of the analytics should be in weekly view.
    * Focus range of timeline: Hour. need individual hour interval. Because if I want to see information from  7 AM to 10 AM, not from 6 AM to 9 AM. How I'd be able to see it? It is easier to have every hour as separate entries
    * To know which API I am viewing, the name is enough
    * (Question: how to see aggregrated information about a specific API key?e.g. number of requests made with this API key/URL/IP Address) --> Should we be implementing this? in chart?
    * HTTP Status: how many request had status 200, how many had status 400? --> implemented in the timeline using different color?
    * Overview information: Number of errors (as percentage: some% of requests resulted with errors.)
    * Filtering: (like the one in api-umbrella)
