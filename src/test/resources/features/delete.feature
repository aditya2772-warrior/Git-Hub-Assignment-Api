Feature: writing the test case for the delete 

Background: 
  * def endpoints = read('classpath:features/endpoints.json')
  * url endpoints.deleteUser

  Scenario: Delete post using path param
    Given method delete
    Then status 200
    * print response



