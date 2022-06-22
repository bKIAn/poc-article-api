#!/bin/bash
curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "1", "Title": "Latest science shows that potato chips are better for you than sugar.", "Date":  "2016-09-22", "Body":  "Some text, potentially containing simple markup about how potato chips are great.", "Tags":  ["health", "fitness", "science"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "2", "Title": "The impact of climate change on electricity demand: review", "Date":  "2013-01-21", "Body":  "Analysis of institutional adaptability to redress electricity infrastructure vulnerability due to climate change.", "Tags":  ["commontag", "climate change adaptation", "electricity", "power generation", "infrastructure"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "3", "Title": "Conceptualisting, Evaluating and Reporting Social Resilience in Vulnerable Regional and Remote Communities Facing Climate Change in Tropical Queensland. Marine and Tropical Sciences Research Facility (MTSRF) Transition Project Final Report", "Date":  "2016-12-13", "Body":  "Regional and remote communities in tropical Queensland are among Australia’s most vulnerable in the face of climate change.", "Tags":  ["commontag", "marine", "social resilience"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "4", "Title": "Biodiversity planning-capturing multiple values in decision-making: A framework for research 2011-2015", "Date":  "2011-05-01", "Body":  "Planning systems, governance structures and institutions that capture the diversity of social values and world views associated with biodiversity, and ensure mainstream community engagement in its conservation, remain elusive.", "Tags":  ["biodiversity", "tropics", "marine"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "5", "Title": "Climate Change Adaptation", "Date":  "2013-01-21", "Body":  "The authors present the Awareness Behaviour Intervention Action (ABIA) Framework, a new system developed by them to support Environmentally Responsible Behaviour (ERB).", "Tags":  ["commontag", "climate change adaptation", "environment", "behaviour"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "6", "Title": "Sustainable Infrastructure in the Tropics", "Date":  "2017-01-01", "Body":  "Sustainable, resilient and inclusive infrastructure lies at the heart of global development. Appropriately developed and managed, infrastructure is a powerful catalyst for promoting economic growth, social inclusion and environmental stewardship.", "Tags":  ["sustainablilty", "infrastructure", "development", "tropics"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "7", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag7.0", "psuedo_tag7.1", "psuedo_tag7.2", "psuedo_tag7.3"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "8", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag8.0", "psuedo_tag8.1", "psuedo_tag8.2"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "9", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag9.0", "psuedo_tag9.1", "psuedo_tag9.2", "psuedo_tag9.3"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "10", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag10.0"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "11", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag11.0"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "12", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag12.0", "psuedo_tag12.1"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "13", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag13.0", "psuedo_tag13.1"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "14", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag14.0", "psuedo_tag14.1"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "15", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag15.0"]}'\
	http://localhost:8080/articles

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":    "16", "Title": "Psuedo title for testing R6~R9", "Date":  "2013-01-21", "Body":  "Psuedo body for testing R6~R9.", "Tags":  ["commontag", "psuedo_tag16.0"]}'\

curl -i -H "Content-Type: application/json" -X POST -d\
	'{"Id":"21", "Title":"Test Article 21 psuedo title", "Date":"2022-01-17", "Body":"Psuedo body", "Tags": ["tag1", "tag2", "tag3"]}'\
	http://localhost:8080/articles
