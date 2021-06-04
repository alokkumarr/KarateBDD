Feature: Karate Test Suite 9
  This is the rest API with xml output

  @rest
  Scenario: Rest TestCase 1
    This is for the rest test case 1

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method post
    Then status 200
    * print responseHeaders
    * print response
    * match response //string == 104