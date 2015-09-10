# ApiUmbrella Response object

This note basically extends Brylie's architecture approach.

Here is the general look at one of the apiUmbrella analytics response. Some of the fields inside **_score** object are in use right now: **request_at, request_url, request_ip, request_ip_country, response_time.**

{ _index: 'api-umbrella-logs-v1-2015-08',

    _type: 'log',

    _id: 'aeud2s51tlkf2343eee0',

    _score: 1,

    _source: 

     { request_at: '2015-08-03T11:15:12.133Z',

       request_method: 'GET',

       request_url: '[](https://apinf.com/api-umbrella/v1/users/)https://apinf.com/api-umbrella/v1/users/',

       request_accept: 'application/json',

       request_content_type: 'application/json',

       request_ip: '83.245.232.10',

       response_status: 200,

       response_content_length: null,

       response_server: 'nginx',

       response_content_type: 'application/json; charset=utf-8',

       response_age: 0,

       response_transfer_encoding: 'chunked',

       internal_gatekeeper_time: 2.5,

       internal_response_time: 159.2,

       api_key: 'iKr7EhM3OoZ5R6kbbO814Alwmzzlm6ACj6aluKQb',

       user_id: '5b2212b8-cb2c-47dd-bbfe-60b7e9e1fec3',

       user_email: 'email@gmail.com',

       user_registration_source: 'web',

       backend_response_time: 154,

       response_size: 133703,

       request_size: 254,

       response_time: 277,

       proxy_overhead: 123,

       request_ip_country: 'FI',

       request_ip_location: [Object],

       request_scheme: 'https',

       request_host: 'apinf.com',

       request_path: '/api-umbrella/v1/users/',

       request_query: {},

       request_hierarchy: [Object] } } ]