Feature: Karate Test Suite 7
  Reading payload data from file

  Scenario: Test scenario from external file system
    This test scenario for read file

    * def xml = read("tempconvertInput.xml")
    * print xml
    * match xml contains 37
    * match xml //CelsiusToFahrenheit/Celsius == 37