Feature: Reqres Login and Get Users with Token

  Background:
    * url 'https://reqres.in'

@AT
Scenario: Login and fetch users with token

    # Step 1: Login and extract token
    Given path '/api/login'
    And header x-api-key = 'reqres-free-v1'
    And request
      """
      {
        "email": "eve.holt@reqres.in",
        "password": "cityslicka"
      }
      """
    When method POST
    Then status 200
    * def token = response.token
    * print 'Access Token:', token

   
    Given path '/api/users'
    And param page = 2
    And header Authorization = 'Bearer ' + token
    When method GET
    Then status 200
    * print response
