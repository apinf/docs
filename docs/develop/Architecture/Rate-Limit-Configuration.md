# Rate limit configuration 

**GUI notes**

*   The basic model structure is that an API Backend contains a settings object, which can contain some high-level rate limit settings like [rate_limit_mode](https://github.com/NREL/api-umbrella-web/blob/1f43fe1cc7f3ece819a028a64677e4dfd795a035/app/models/api/settings.rb#L16) (default, unlimited, or custom). In the event of a "custom" mode, then the settings object can contain an array of [rate_limits](https://github.com/NREL/api-umbrella-web/blob/1f43fe1cc7f3ece819a028a64677e4dfd795a035/app/models/api/settings.rb#L26) that reference that RateLimit model.
*   Each rate limit instance defines the limit on a specific time  duration (for example, allow 500 requests per hour). There's some more options on each limit, which we recently tried to document here: [](https://github.com/NREL/api-umbrella-gatekeeper/tree/master/config#apisettingsrate_limits)[https://github.com/NREL/api-umbrella-gatekeeper/tree/master/config#apisettingsrate_limits](https://github.com/NREL/api-umbrella-gatekeeper/tree/master/config#apisettingsrate_limits)
*   Here's an example of how the api record with a custom rate limit would actually look as a nested object in the Mongo database: [](https://github.com/NREL/api-umbrella-gatekeeper/blob/f6ef66fd8d0d2a001a305fe8385410d077bfdf29/test/server/rate_limiting.js#L775-L824)[https://github.com/NREL/api-umbrella-gatekeeper/blob/f6ef66fd8d0d2a001a305fe8385410d077bfdf29/test/server/rate_limiting.js#L775-L824](https://github.com/NREL/api-umbrella-gatekeeper/blob/f6ef66fd8d0d2a001a305fe8385410d077bfdf29/test/server/rate_limiting.js#L775-L824)

**apiSettings.rate_limits**

Calculating usage rates involves some practical limitations. Notably, we don't want to create a new record for every request; we really only need a counter. To implement that, the timeline is cut into evenly-sized, indexable periods (of size accuracy milliseconds). Daily usage, then, is the summation of the usage counts for each of the periods between now and 24 hours ago.

*   apiSettings.rate_limits.duration - This is the length of time (in milliseconds) over which a usage rate should be calculated.
*   apiSettings.rate_limits.accuracy - Effectively, the granularity (in milliseconds) to split the timeline. The smaller granularity, the more frequently a user' requests are forgotten
*   apiSettings.rate_limits.limit_by - what we should bucket requests by. Options include ip and apiKey, which count each request towards the associated IP address or API key's rate limits.
*   apiSettings.rate_limits.limit - the number of requests allowed for this limit_by over a period of duration
*   apiSettings.rate_limits.distributed - a boolean, indicating whether or not this limit should be aggregated between multiple servers. Generally, this should only be false for very small durations
*   apiSettings.rate_limits.response_headers - a boolean, indicating whether or not the rate limit and remaining number of requests should be added as headers to the response