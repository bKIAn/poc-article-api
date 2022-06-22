# Proof of Concept: Article API in Go (poc-article-api)
This is an implementation of Article API in Go language.

## Requirements and Assumptions
1. Definition of Requirements: https://ffxblue.github.io/interview-tests/test/article-api/
1. Address of the web server: http://localhost:8080
1. Extra implementation: Extra endpoint to list all Articles (http://localhost:8080/articles/all)

## Test Environment
Tested and verified on:
1. (X)Ubuntu 20.04.4 LTS (Focal Fossa)
1. Go 1.18.3 (go1.18.3 linux/amd64)
1. Gin Web Framework 1.8.1

## Installation
1) Install dependencies:
* Download and install [Go](https://go.dev/doc/install).
* Install Curl:
```
$ sudo apt install curl
```
2) Clone this project:
```
$ git clone https://github.com/bKIAn/poc-article-api/
$ cd poc-article-api
```
3) Install required packages:
```
$ go mod tidy
```
4) (Optional) Make the script executable:
```
$ chmod u+x input.sh
```
5) Run the applet with Go:
```
$ go run .
```
Now Article API should be up and running, waiting for your requests!


## Using the API
1) Adding articles using bash script (check step #4 of [Installation](https://github.com/bKIAn/poc-article-api/edit/main/README.md#installation) block):
```
$ ./input.sh
```
2) Adding articles using command line (POST):
```
$ curl -i -H "Content-Type: application/json" -X POST -d '{"Id":"25", "Title":"Test Article 25 psuedo title", "Date":"2022-01-17", "Body":"Psuedo body", "Tags": ["tag1", "tag2", "tag3"]}' http://localhost:8080/articles
```
3) Reading an available article (GET):
```
$ curl -X GET http://localhost:8080/articles/1
```
4) Reading an unavailable article (GET):
```
$ curl -X GET http://localhost:8080/articles/22
```
5) Reading the list of all available articles (GET):
```
$ curl -X GET http://localhost:8080/articles/all
```
6) Query articles based on the tag and date (GET):
```
$ curl -X GET http://localhost:8080/tags/commontag/2013-01-21
```


## References
1. Go Main Website: https://go.dev/
1. Go by Example: https://gobyexample.com/
1. RESTful API with Go and Gin: https://go.dev/doc/tutorial/web-service-gin
1. Implement of Article API: https://golangexample.com/implementation-of-technical-test-article-api/


## Wishlist
1. Using Infrastructure as Code (IaC) to deploy the API inside of a Docker Container.
1. Using config files for reading parameters (port, maximum results, etc.) instead of hardcoding.
1. Storing full timestamp (date + time) for each article.
1. Reading from and writing to a JSON file. 
1. Reading parameters from command line (port, filename, etc.).
1. Reading from and writing to a database.
1. Searching and providing the results based on the user's timezone.


## Contributing
1. Fork it.
1. Create your feature branch (`$ git checkout -b my-new-feature`).
1. Commit your changes (`$ git commit -am 'Add some feature'`).
1. Push to the branch (`$ git push origin my-new-feature`).
1. Create new Pull Request.
