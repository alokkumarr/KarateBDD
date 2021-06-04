Feature: Karate Test Suite 15 js functinal
  The test suite for js

  @rest
  Scenario: Calling Test js function 1

    * def f1 = function() { return 10 }
    * def f2 =
    """
      function(a) {
        karate.log()
      }
    """