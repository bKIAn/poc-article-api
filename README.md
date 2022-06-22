# Proof of Concept: Article API in Go (poc-article-api)
This is an implementation of Article API in Go language.

## Requirements and Assumptions
1. [Definition of Requirements]([https://www.virtualbox.org/wiki/Downloads](https://ffxblue.github.io/interview-tests/test/article-api/))
1. Address of the web server: (http://localhost:8080)
1. Extra implementation: Extra endpoint to list all Articles (http://localhost:8080/articles/all)

## Test Environment
Tested and verified on:
1. (X)Ubuntu 20.04.4 LTS (Focal Fossa)
1. Go 1.18.3 (go1.18.3 linux/amd64)
1. Gin Web Framework 1.8.1

## Installation
1) Install dependencies:
* [Go](https://go.dev/doc/install)
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

## Contributing
1. Fork it
1. Create your feature branch (`$ git checkout -b my-new-feature`)
1. Commit your changes (`$ git commit -am 'Add some feature'`)
1. Push to the branch (`$ git push origin my-new-feature`)
1. Create new Pull Request
