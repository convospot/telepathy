[![Book session on Codementor](https://cdn.codementor.io/badges/book_session_github.svg)](https://www.codementor.io/homerquan?utm_source=github&utm_medium=button&utm_term=homerquan&utm_campaign=github)

## Goal
Telephathy is a full stack reactive platform for achieving following goals:

1. Make front-end development easier (consume linked data automatically)
2. Performance (progressive loading for API)
2. Reactive API (more than observer the whole object, reactive for each linked child)
3. Client layour to consume reactive API
4. Abstract spec to reactive backend (e.g., RxScala, AKKA)

## Example: a stock quote API

```json
{
	"meta": {
		"baseUri": "https://localhost:8002",
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
