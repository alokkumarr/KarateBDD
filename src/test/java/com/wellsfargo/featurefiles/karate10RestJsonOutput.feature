Feature: Karate Test Suite 10
  This is the rest API with json output

  @rest
  Scenario: Rest TestCase 1
    This is for the rest test case 1

    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * print responseHeaders
    * print response
    #* match response //string == 104
    * print responseTime
    * assert responseTime <= 2000
    * assert response.total == 12
    * assert response.data[0].first_name == "Michael"
    * assert response.data[0].last_name == "Lawson"
    * assert responseType == "json"


  @rest
  Scenario: Rest TestCase 2
  This is for the rest test case 2

    Given url "https://reqres.in"
    And path "/api/users"
    And param page = 2
    When method get
    Then status 200
    * print responseHeaders
    * print response
    #* match response //string == 104
    * print responseTime
    * assert responseTime <= 2000
    * assert response.total == 12
    * assert response.data[0].first_name == "Michael"
    * assert response.data[0].last_name == "Lawson"
    * assert responseType == "json"