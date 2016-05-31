### Overview
[ProgrammableWeb API Directory]{http://www.programmableweb.com/apis/directory}
Browse the world's largest API repository


### Common features
- API list page
-- Browsing and searching (search has keyword highlighted)
-- Pagination
-- Metadata: categories - a lot and multiselect
-- Sorting: category, updated
-- Last updated
-- Deprecated APIs (which are not included by default)
- API detail page
-- Summary: owner, SSL, contact, # follower/devs
-- Documentation
-- Related APIs
- Add own API
- Maturity
-- 15,124 APIs (31/05/16)
- Development
-- Sample code - links to articles
-- How-to
- Community
-- Social media
-- Comments
-- Followers
-- Tracking APIs > watchlist
- Legal
-- No info 

### UI
List is in a tabular view, not in card view
Tabbed info in detail view.

### Strengths
A lot of content - articles - with APIs linked to them.
Mashups.
Search works better because there is a lot more metadata.

### Weaknesses
No automated filter. When you apply a filter, you need to click the search button (of an empty searchbox, in a different widget).
Some bugs (e.g. pagination, you can not remove sorting)
How are results sorted by default? Is there a quality algorithm?
No strong social aspect (followers data is not in the list)
No uptime - quality of the API?

Documentation is horrible. Sample codes and how-to's are simple articles.
E.g. The most popular API, first article links to a 2010 Not Found page:
http://www.programmableweb.com/api/google-maps/source-code
http://www.programmableweb.com/how-to/google-maps-api-javascript-get-local-search-results-google-source-code
http://www.webmonkey.com/2010/02/get_local_search_results_with_google_maps_and_a...

No testing interface, sandbox.

You can not get keys

Inactive community? Comments are pretty old.
