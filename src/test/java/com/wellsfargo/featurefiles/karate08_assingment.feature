Feature: Karate Test Suite 8
  This is the read external file payload

  Scenario: Soap 1.1 URI read from external from file Test 1
  This test scenario for API read file

    Given url "https://ecs.syr.edu/faculty/fawcett/Handouts/cse775/code/calcWebService/Calc.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read("calcinput.xml")
    When soap action "http://tempuri.org/Add"

    Then status 200
    * print responseHeaders
    * match responseHeaders.X-AspNet-Version[0] == "4.0.30319"
    * print response
    * match //AddResponse/AddResult == 30