Feature: Karate Test Suite 11
  This is the custom validations

  Scenario: Custom Validation TestCase 1
    Using logical operator &&

    * def a = 12
    * def b = 23
    * assert a == 12 && b == 23

  Scenario: Custom Validation TestCase 2
  Using logical operator ||

    * def a = 12
    * def b = 23
    * assert a == 12 || b > 23

  Scenario: Custom Validation TestCase 3
  Using logical operator !=

    * def a = 12
    * def b = 23
    * assert a != 11

  Scenario: Custom Validation TestCase 4
  Using matchers (data types)

    * def a = 12
    * def b = "test data"
    * def c = false
    * def d = 12
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"
    * match d == "#number"