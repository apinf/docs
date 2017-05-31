# Elasticsearch data structure

This is the data structure of the Elasticsearch response for each call.
We use it to design our dashboard charts. Fields are in use right now: **request_at, request_url, request_ip, request_ip_country, response_time.**

## Overview
| field                       | type          | example                                                                                                                                                           | notes                   |
|-----------------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| api_key                     | string        | 8Uq3GR9sHiTrazBlEnNyGAfCNlPXULakC6s12ka2                                                                                                                          |                         |
| user_id                     | string        |                                                                                                                                                                   |                         |
| request_accept              | string        | application/json                                                                                                                                                  |                         |
| request_at                  | date          | 1475148774275                                                                                                                                                     |                         |
| request_basic_auth_username | string        |                                                                                                                                                                   |                         |
| request_connection          | string        | close                                                                                                                                                             |                         |
| request_content_type        | string        | application/json                                                                                                                                                  |                         |
| request_host                | string        | nightly.apinf.io:3002                                                                                                                                             |                         |
| request_ip                  | string        | 87.94.164.76                                                                                                                                                      |                         |
| request_ip_country          | string        | FI                                                                                                                                                                |                         |
| request_ip_region           | string        | 15                                                                                                                                                                |                         |
| request_ip_city             | string        | Tampere                                                                                                                                                           |                         |
| request_path                | string        | /api-umbrella/v1/apis/                                                                                                                                            |                         |
| request_path_hierarchy      | array(string) | ["0/nightly.apinf.io:3002/", "1/nightly.apinf.io:3002/api-umbrella/", "2/nightly.apinf.io:3002/api-umbrella/v1/", "3/nightly.apinf.io:3002/api-umbrella/v1/apis"] |                         |
| request_query               | string        |                                                                                                                                                                   |                         |
| request_referer             |               |                                                                                                                                                                   |                         |
| request_scheme              | string        | https                                                                                                                                                             |                         |
| request_size                | integer       | 590                                                                                                                                                               |                         |
| response_cache              | string        | MISS                                                                                                                                                              |                         |
| response_content_encoding   |               |                                                                                                                                                                   |                         |
| response_status             | short         |                                                                                                                                                                   |                         |
| response_age                | integer       |                                                                                                                                                                   |                         |
| response_content_length     | integer       | 1436                                                                                                                                                              |                         |
| response_content_type       | string        | application/json; charset=utf-8                                                                                                                                   |                         |
| response_size               | integer       | 2280                                                                                                                                                              |                         |
| response_server             | string        | openresty                                                                                                                                                         |                         |
| response_status             | string        | 201                                                                                                                                                               |                         |
| response_time               | integer       | 149                                                                                                                                                               |                         |
| request_method              | string        | POST                                                                                                                                                              |                         |
| backend_response_time       | integer       | 131                                                                                                                                                               |                         |
| proxy_overhead              | integer       | 3                                                                                                                                                                 |                         |
| user_email                  | string        | nightly@apinf.io                                                                                                                                                  |                         |
| user_id                     | string        | 844433ba-5dfd-4734-af0d-09bd40636660                                                                                                                              |                         |
| user_registration_source    | string        | web                                                                                                                                                               |                         |
| internal_response_time      | float         | ??                                                                                                                                                                | May no longer be in use |
| internal_gatekeeper_time    | float         | 0                                                                                                                                                                 |                         |
| request_ip_location         | geo_point     | { lat: 61.5, lon: 23.75 }                                                                                                                                         |                         |


## Raw example

```
{ _index: 'api-umbrella-logs-v1-2017-03',
  _type: 'log',
  _id: 'aqq7k887q9339spvrih0',
  _score: null,
  _source:
    { api_key: '[actual user's API key]',
    backend_response_time: 161,
    gatekeeper_denied_code: null,
    internal_gatekeeper_time: 0,
    proxy_overhead: 7,
    request_accept: '*/*',
    request_accept_encoding: 'gzip, deflate, sdch, br',
    request_at: 1489580360900,
    request_basic_auth_username: null,
    request_connection: 'keep-alive',
    request_content_type: null,
    request_hierarchy: [Object],
    request_host: 'nightly.apinf.io:3002',
    request_ip: '109.204.245.84',
    request_ip_city: 'Tampere',
    request_ip_country: 'FI',
    request_ip_location: [Object],
    request_ip_region: '15',
    request_method: 'GET',
    request_origin: null,
    request_path: '/api-umbrella/v1/analytics/drilldown.json',
    request_query: [Object],
    request_referer: 'https://nightly.apinf.io:3002/admin/',
    request_scheme: 'https',
    request_size: 1326,
    request_url: 'https://nightly.apinf.io:3002/api-umbrella/v1/analytics/drilldown.json?tz=Europe%2FHelsinki&search=&start_at=2017-02-14&end_at=2017-03-15&query=%7B%22condition%22%3A%22AND%22%2C%22rules%22%3A%5B%7B%22field%22%3A%22gatekeeper_denied_code%22%2C%22id%22%3A%22gatekeeper_denied_code%22%2C%22input%22%3A%22select%22%2C%22operator%22%3A%22is_null%22%2C%22type%22%3A%22string%22%2C%22value%22%3Anull%7D%5D%7D&interval=day&prefix=0%2F&beta_analytics=false',
    request_user_agent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36',
    request_user_agent_family: 'Chrome',
    request_user_agent_type: 'Browser',
    response_age: 0,
    response_cache: 'MISS',
    response_content_encoding: 'gzip',
    response_content_length: null,
    response_content_type: 'application/json; charset=utf-8',
    response_server: 'openresty',
    response_size: 1439,
    response_status: 200,
    response_time: 168,
    response_transfer_encoding: 'chunked',
    user_email: 'web.admin.ajax@internal.apiumbrella',
    user_id: '70a3c56f-5764-4a69-9b2a-c87aff573735',
    user_registration_source: 'seed' },
sort: [ 1489580360900 ]
}
```

## Fields description:
- `api_key`: API key used to make the request
- `backend_response_time`:
- `gatekeeper_denied_code`:
- `internal_gatekeeper_time`:
- `proxy_overhead`:
- `request_accept`:
- `request_accept_encoding`:
- `request_at`: Timestamp of a request
- `request_basic_auth_username`:
- `request_connection`:
- `request_content_type`:
- `request_hierarchy`:
- `request_host`:
- `request_ip`: IP address
- `request_ip_city`: City
- `request_ip_country`: Country
- `request_ip_location`:
- `request_ip_region`:
- `request_method`: Method used to make a request. Can be **POST**, **GET**, **PUT**, **PATCH**, **DELETE**
- `request_origin`:
- `request_path`:
- `request_query`:
- `request_referer`:
- `request_scheme`:
- `request_size`:
- `request_url`:
- `request_user_agent`:
- `request_user_agent_family`:
- `request_user_agent_type`:
- `response_age`:
- `response_cache`:
- `response_content_encoding`:
- `response_content_length`:
- `response_content_type`:
- `response_server`:
- `response_size`:
- `response_status`: Response status code
- `response_time`: Response time
- `response_transfer_encoding`:
- `user_email`:
- `user_id`:
- `user_registration_source`:
- `sort`:
