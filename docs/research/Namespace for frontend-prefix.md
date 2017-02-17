[Issue] (https://github.com/apinf/platform/issues/2093)
### Description of problem and its consequences 
At the moment, Apinf UI allows the user to use any proxy backend path as long as it is unique. However, API Umbrella matches APIs for calls by the matching order field. As a result, calls maybe terminating in a way user is not expecting. As a worst case scenario, they ends up calling a completely different API.

### Solution options
**The first option**. Add username to namespace frontend prefixes [#1400 issue](https://github.com/apinf/platform/issues/1400)

#### Pros
1. The username is already unique that provide the unique frontend prefix by default
2. It does not need to have special validate of the uniqueness that allows us to simplify code in the autoform hook: [delete step of validation](https://github.com/apinf/platform/blob/develop/proxy_backends/client/form/autoform.js#L49-L53) and [delete the server method](https://github.com/apinf/platform/blob/develop/proxy_backends/server/methods.js#L40-L56). 

#### Cons
1. Need to upgrade the old frontend prefix on API-umbrella side and in platform database 
1. Need to modify UI for proxy backend form where it will explain to users how the frontend prefix will be created


**The second option**. Implement the additional validate on the uniqueness

#### Pros
1. Don't change the current structure or UI

#### Cons
1. User have to think up the new frontend prefix, don't be sure that the nex example will be correct

[Issue] (https://github.com/apinf/platform/issues/2032)
### Description of problem and its consequences
We need a way link to the analytics data to particular API ID. This allows us to delete the API along with corresponding analytics data. This would also improve our API owner dashboard.

### Solution options
Now it can not be resolved on the platform side via particular API ID. It depends on a structure of ElasticSearch index which doesn't support storage of API ID. [Issue] (https://github.com/NREL/api-umbrella/issues/25)

A suggestion is using the frontend prefix.

#### Pros
1.  After adding namespace for prefix the request path must be unique for using as link

#### Cons
1. Need to re-write realisation when ElasticSearch index will include the field for storing API ID.