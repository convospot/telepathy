[![Book session on Codementor](https://cdn.codementor.io/badges/book_session_github.svg)](https://www.codementor.io/homerquan?utm_source=github&utm_medium=button&utm_term=homerquan&utm_campaign=github)

## Goal
Telephathy is a reactive RESTful data access framework for achieving following goals:

1. Serve real-time data 
1. Make front-end development easier (consume linked data automatically)
1. Performance
	* client-side cache coherance
	* query optimazation
	* progressive loading for API 	
1. Reactive API (more than observer the whole object, reactive for each linked child)
1. Client layour to consume reactive API
1. Abstract spec to reactive backend (e.g., RxScala, AKKA)
1. Specify where to process the data (sensor, network or server) 

## Usage

* Real-time apps
* IoT
* Real-time analytics

## Example: a stock quote API

```json
{
	"meta": {
		"baseUri": "https://localhost:8002",
		"prefix": "v1",
		"offset": 0,
		"limit": 10,
		"total": 30,
		"next": "/stocks?offset=1&limit=10"
	},
	"data": [{
		"id": "53f396c03b6a5d673297e9ce",
		"@link":"/stock/53f396c03b6a5d673297e9ce",
		"@notify":true
	}]
}
```

## Reference

* Dependances in client js object: ProactJS http://proactjs.github.io/
* ReactiveX http://reactivex.io/

## Similar platform

* Netflix falcor http://netflix.github.io/falcor/
* Facebook graphql https://github.com/graphql/graphql-js
* Client query http://www.persvr.org/rql/, https://docs.strongloop.com/display/public/LB/Querying+data
