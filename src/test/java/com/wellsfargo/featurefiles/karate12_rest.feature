Feature: Karate Test Suite 9
  This is the rest API with xml output

  @ddt
  Scenario Outline: Rest TestCase 1
    This is for the rest test case 1

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Celsius>"

    When method post
    Then status 200
    * match response //string == <Fahrenheit>

    Examples:
      |Celsius|Fahrenheit|
      | 40 | 104  |
      | 37 | 98.6 |
      | abc | "Error" |