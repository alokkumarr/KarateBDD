Feature: Karate Test Suite 14 calling feature
  Calling feature file

  @rest
  Scenario: Calling Test file 1

    * def result = call read("karate14_calledfeature.feature@called1")
    * print result.response
    * assert result.response.title == "Karate"

    * def result = call read("karate14_calledfeature.feature@called2")
    * print result.response
    #* match result.response.title == "sunt"