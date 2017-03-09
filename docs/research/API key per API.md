### Description of problem and its consequences 
We are interested to have analytics about the API key usage per API. API key is available in the API Umbrella drilldown dashboard, but does not appear to be available in the drilldown analytics results.

### Research result

All data which are available on the analytics page are available via REST API as well. Request to fetch data and response below. The problem is to understand response structure.

### Host
- https://nightly.apinf.io:3002

### Endpoint
- `/api-umbrella/v1/analytics/drilldown.json`

### Request parameters
- prefix=`1/nightly.apinf.io:3002/`
- start_at=`2017-02-09`
- end_at=`2017-02-18`
- interval=`day`
- query=`{"condition":"AND","rules":[{"id":"api_key","field":"api_key","type":"string","input":"text","operator":"equal","value":"3uFSk7GH9vImyv5K6ia66mEoUQj4gdtfIQjA5ENb"}]}`

### Response
```json
{
	"results": [{
		"depth": 1,
		"path": "nightly.apinf.io:3002/ss",
		"terminal": true,
		"descendent_prefix": "2/nightly.apinf.io:3002/ss",
		"hits": 2
	}, {
		"depth": 1,
		"path": "nightly.apinf.io:3002/alternative/",
		"terminal": false,
		"descendent_prefix": "2/nightly.apinf.io:3002/alternative/",
		"hits": 1
	}],
	"hits_over_time": {
		"cols": [{
			"id": "date",
			"label": "Date",
			"type": "datetime"
		}, {
			"id": "1/nightly.apinf.io:3002/ss",
			"label": "nightly.apinf.io:3002/ss",
			"type": "number"
		}, {
			"id": "1/nightly.apinf.io:3002/alternative/",
			"label": "nightly.apinf.io:3002/alternative/",
			"type": "number"
		}],
		"rows": [{
			"c": [{
				"v": 1486598400000,
				"f": "Thu, Feb 9, 2017"
			}, {
				"v": 0,
				"f": "0"
			}, {
				"v": 0,
				"f": "0"
			}]
		}, {
			"c": [{
				"v": 1486684800000,
				"f": "Fri, Feb 10, 2017"
			}, {
				"v": 0,
				"f": "0"
			}, {
				"v": 1,
				"f": "1"
			}]
		}, {
			"c": [{
				"v": 1486771200000,
				"f": "Sat, Feb 11, 2017"
			}, {
				"v": 0,
				"f": "0"
			}, {
				"v": 0,
				"f": "0"
			}]
		}, {
			"c": [{
				"v": 1486857600000,
				"f": "Sun, Feb 12, 2017"
			}, {
				"v": 0,
				"f": "0"
			}, {
				"v": 0,
				"f": "0"
			}]
		}, {
			"c": [{
				"v": 1486944000000,
				"f": "Mon, Feb 13, 2017"
			}, {
				"v": 2,
				"f": "2"
			}, {
				"v": 0,
				"f": "0"
			}]
		}, {
			"c": [{
				"v": 1487030400000,
				"f": "Tue, Feb 14, 2017"
			}, {
				"v": 0,
				"f": "0"
			}, {
				"v": 0,
				"f": "0"
			}]
		}]
	},
	"breadcrumbs": [{
		"crumb": "All Hosts",
		"prefix": "0/"
	}, {
		"crumb": "nightly.apinf.io:3002",
		"prefix": "1/nightly.apinf.io:3002/"
	}]
}
```

### Parsed response
The `results` array contains the result values. If API-umbrella doesn't have data which satisfy request parameters then the `results` array will be empty. 

`hits_over_time.cols[i].label` contains value for table heading. 
`hits_over_time.rows` array contains the value of each table row.

| Date | nightly.apinf.io:3002/ss | nightly.apinf.io:3002/alternative/ |
| ------ | ------ | ------ |
|`rows[i].c[0].f` |`rows[i].c[1].v` | `rows[i].c[2].v` |
| "Thu, Feb 9, 2017" | 0 | 0 |
| "Thu, Feb 10, 2017" | 0 | 1 |
| "Thu, Feb 11, 2017" | 0 | 0 |
| "Thu, Feb 12, 2017" | 0 | 0 |
| "Thu, Feb 13, 2017" | 2 | 0 |
| "Thu, Feb 14, 2017" | 0 | 0 |

1. `rows[i].c[0].f` is presented as value of X axis. 
2. `rows[i].c[1].v..rows[i].c[n].v` is presented as value of Y axis.
3. Object like `{ "v": 1487030400000, "f": "Tue, Feb 14, 2017" }` contains data value in two different format: 
    - `v` is timestamp format.
    - `f` is Locale date string format. 

That is why the information is duplicated in the next objects:

```json
    { "c": [{
        "v": 1486684800000,
        "f": "Fri, Feb 10, 2017"
    }, {
        "v": 0,
        "f": "0"
    }, {
        "v": 1,
        "f": "1"
    }]
    }
```
