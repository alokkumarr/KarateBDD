Feature: Karate Test Suite 13 API Validation
  This is the rest API to validate the e2e (API Chaining)


  @rest
  Scenario: E2E rest API test

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


  #-------------------fetching resources
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method get
    Then status 200
    #* assert response.title == Karate


  #----------------- updating resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    And header Content-type = "application/json; charset=UTF-8"
    And request "{id: " + id + ", title: 'foo1', body: 'bar1', userId: 1}"
    When method put
    Then status 200


  #-------------------deleting resources
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method delete
    Then status 200