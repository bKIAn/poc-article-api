// This app is the implementation of the ARTICLE API. Reviewed and updated by Kia Mehr.
// Last Modification Date: 22/JUN/2022
//
// References:
// 1. Go Main Website:                  https://go.dev/
// 2. Go by Example:                    https://gobyexample.com/
// 3. RESTful API with Go and Gin:      https://go.dev/doc/tutorial/web-service-gin
// 4. Implement of Article API:         https://golangexample.com/implementation-of-technical-test-article-api/
//
// License: GPL v3.0
//

package main

// Importing required packages.
import (
	"fmt"
	"net/http"

	// Gin HTTP web framework
	"github.com/gin-gonic/gin"
)

// Constants definition per assumptions or description of the exercise.
const (
	DevHostURL                         = "localhost:8080"
	MAX_ARTICLES_OF_TAGNAME_DATE_QUERY = 10
)

// Attributes of an article.
type Article struct {
	Id    string
	Title string
	Date  string
	Body  string
	Tags  []string
}

// Attributes of the third endpoint.
type TagNameDateSummary struct {
	Tag         string
	Count       int
	Articles    []string
	RelatedTags []string
}

// Create articles type from another type.
type Articles struct {
	Articles []Article `json:"articles"`
}

// Variables definition.
var articles Articles

// Implementation of an extra endpoint (returning all articles).
func getArticles(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, articles)
}

// Implementation of the second endpoint (returning the article based on ID).
func getArticleByID(c *gin.Context) {
	id := c.Param("id")

	// Scan the list of articles and return it wwhen found th ID.
	for _, a := range articles.Articles {
		if a.Id == id {
			c.IndentedJSON(http.StatusOK, a)
			return
		}
	}
	// Return an error message if there is no article with requested ID.
	c.IndentedJSON(http.StatusNotFound, gin.H{"message": "article not found"})
}

// Implementation of the third endpoint (returning the list of articles based on ID and date).
func getArticleByTagDate(c *gin.Context) {
	tagName := c.Param("tagName")
	dt := c.Param("date")

	fmt.Println("received parameter tagName=", tagName)
	fmt.Println("received parameter date=", dt)

	var foundMatched bool = false
	// Format the results's JSOM
	var tagNameDateStats TagNameDateSummary

	tagNameDateStats.Tag = tagName
	tagNameDateStats.Count = 0
	var related_tags = make(map[string]int)

	// Scan the list of articles for matching date and ID.
	for _, a := range articles.Articles {
		if a.Date == dt {
			// Print the list of ID's with matched date.
			fmt.Println("matched Id=", a.Id, " and Date=", a.Date)
			for _, t := range a.Tags {
				// Print the list of matched tags.
				if t == tagName {
					fmt.Println("matched tag=", t)
					foundMatched = true
				} else {
					related_tags[t]++
				}
				// Count the number of tags for that specific day.
				tagNameDateStats.Count = len(related_tags) + 1
			}
		}
	}
	if !foundMatched {
		c.IndentedJSON(http.StatusNotFound, gin.H{"message": "article not found"})
	} else {
		// Make a list of related tags.
		for tag, _ := range related_tags {
			tagNameDateStats.RelatedTags = append(tagNameDateStats.RelatedTags, tag)
		}
	}

	c.IndentedJSON(http.StatusOK, tagNameDateStats)
}

// Implementation of the first endpoint (adding articles).
func postArticles(c *gin.Context) {
	var article Article

	if err := c.BindJSON(&article); err != nil {
		return
	}

	articles.Articles = append(articles.Articles, article)
	c.IndentedJSON(http.StatusCreated, article)
}

func main() {
	router := gin.Default()
	router.POST("/articles", postArticles)
	router.GET("/articles/:id", getArticleByID)
	router.GET("/tags/:tagName/:date", getArticleByTagDate)
	router.GET("/articles/all", getArticles)
	router.Run(DevHostURL)
}
