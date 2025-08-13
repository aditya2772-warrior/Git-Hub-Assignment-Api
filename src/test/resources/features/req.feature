# Feature: Reqres Login and Get Users with Token

#   Background:
#     * url 'https://reqres.in'


# Scenario: Login and fetch users with token

#     # Step 1: Login and extract token
#     Given path '/api/login'
#     And header x-api-key = 'reqres-free-v1'
#     And request
#       """
#       {
#         "email": "eve.holt@reqres.in",
#         "password": "cityslicka"
#       }
#       """
#     When method POST
#     Then status 200
#     * def token = response.token
#     * print 'Access Token:', token

   
#     Given path '/api/users'
#     And param page = 2
#     And header Authorization = 'Bearer ' + token
#     When method GET
#     Then status 200
#     * print response

Feature: Test a GET API

Background:
  * def baseUrl = 'https://jsonplaceholder.typicode.com'

Scenario: Get post by ID
  Given url baseUrl + '/posts/1'
  When method get
  Then status 200

