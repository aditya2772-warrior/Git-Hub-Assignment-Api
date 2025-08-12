Feature: Writing the Get request 

Background:
  * def endpoints = read('classpath:features/endpoints.json')
  * url endpoints.getUser

@Get 
Scenario: Get request from jsonplaceholders
  Given method get
  Then status 200
  # * print response

@Get  @GetByID
Scenario: Get request from jsonplaceholders by single id 
  Given param id = 1
  When method get
  Then status 200
  * print response

@Get @GetRes
Scenario: Response Matching and Validation
  Given param id = 2
  When method get
  Then status 200
  And match response[0].title == "qui est esse"
  And match response[0].userId == 1
  * print response

@Get @GetQP
Scenario: Query Parameter
  Given params { id: 1, userId: 1 }    
  When method get
  Then status 200
  * print response
