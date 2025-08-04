Feature: Writing the post request data

Background:
  * def endpoints = read('classpath:features/endpoints.json')
  * url endpoints.postUser

@Post
Scenario: post request example
  Given request
    """
    {
      "title": "foo",
      "body": "bar",
      "userId": 1
    }
    """
  And headers { Accept: 'application/json', Content-Type: 'application/json' }
  When method post
  Then status 201
  * match response.title == "foo"
  * match response.body == "bar"
  * print response

@Post
Scenario: Post Request using external files 
  * def body = read("./file.json")
  Given request body
  And headers { Accept: 'application/json', Content-Type: 'application/json' }
  When method post
  Then status 201
  * match response.title == "John"
  * print response


@Post @PostValidation
Scenario: Post Request validation using external file
  * def body = read("./file.json")
  Given request body
  And headers { Accept: 'application/json', Content-Type: 'application/json' }
  When method post
  Then status 201
  * match response.title == "John"
  * def expected = read('./responseValidation.json')
  * match response == expected
  * print response


# @Post
# Scenario: Post Request using external files and NotNull assertions
#   * def body = read("./fail.json")
#   Given request body
#   And headers { Accept: 'application/json', Content-Type: 'application/json' }
#   When method post
#   Then status 201
#   And match response.title == "#notnull"
#   * print response
