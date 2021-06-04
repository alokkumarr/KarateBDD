Feature: Karate Test Suite 6 Soap API
  Soap API Complete validation

  # What we need to test?
  #=========================
  #1. Response Status Code
  #2. Response Header
  #3. Format of Response Body
  #4. Response Body Content
  #5. Performance of API (ResponseTime)

  Scenario: Soap 1.1 URI Complete validation from file Test 1
    This test scenario for API validation


    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read("tempconvertInput.xml")
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    * print responseHeaders
    * match responseHeaders.Server == ["Microsoft-IIS/7.5"]
    * assert responseHeaders.Server[0] == "Microsoft-IIS/7.5"
    * match responseType == "xml"
    * print response
    * match response contains "98.6"
    * match response //CelsiusToFahrenheitResult == 98.6
    * assert responseTime <= 2000
    * print responseTime