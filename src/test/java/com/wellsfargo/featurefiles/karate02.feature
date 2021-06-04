Feature: Karate Test Suite 2
  This is the Second test suite for JSON validation

  Scenario: Karate TestCase 1
    Karate JSON test validation

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "101"
    * assert json.tool.name == "Karate"


  Scenario: Karate TestCase 2
  Karate JSON test validation

    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "101"
    * assert json.tool.name == "Karate"
    * match  json.tool == {"name":"Karate", "version":"0.9.6"}
