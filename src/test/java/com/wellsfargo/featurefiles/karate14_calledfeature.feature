Feature: Karate Test Suite 14 called feature
  Called feature file


  @called1
  Scenario: Called feature file

  #-------------------Creating resources
  Given url "https://jsonplaceholder.typicode.com/posts"
    And header Content-type = "application/json; charset=UTF-8"
    And request
    """
      {
          title: 'Karate',
          body: 'BDD',
          userId: 100,
        }
    """
    When method post
    Then status 201
    #* def id = response.id
    * def id = 1
    * print id


  @called2
  Scenario: Called feature file

  #-------------------Creating resources
    Given url "https://jsonplaceholder.typicode.com/posts/1"
    When method get
    Then status 200