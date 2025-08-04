Feature: writing the Put request api

Background:
  * def endpoints = read('classpath:features/endpoints.json')
  * url endpoints.putUser

@put
Scenario: Put example
  Given request
    """
    {
      "id": 1,
      "title": "funksuk",
      "body": "Vangdu",
      "userId": 1
    }
    """
  And headers { Accept: 'application/json', Content-Type: 'application/json' }
  When method put
  Then status 200
  * match response.title == 'funksuk'
  * print response

@put
Scenario: Put example with external file updations
  Given request
    """
    {
      "id": 1,
      "title": "funksuk",
      "body": "Vangdu",
      "userId": 1
    }
    """
  And headers { Accept: 'application/json', Content-Type: 'application/json' }
  When method put
  Then status 200
  * match response.title == 'funksuk'
  * print response
