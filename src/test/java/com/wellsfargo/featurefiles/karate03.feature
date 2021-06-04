Feature: Karate Test Suite 3
  This is the 3rd test suite for XML validation

  Scenario: Karate TestCase 1
    Karate JSON test validation

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.id
    * assert xml.info.id == 101
    * match xml/info/tool contains "<name>Karate</name><version>0.9.6</version>"
    * match xml contains "Karate"


  Scenario: Karate TestCase 2
  Karate JSON test validation

    Given def xml =
    """
    <info>
        <tool>
          <name>Karate</name>
          <version>0.9.6</version>
        </tool>
        <tool>
          <name>IntelliJ</name>
         <version>2020.2</version>
        </tool>
    </info>
    """
    * print xml
    * match xml/info/tool[1] contains "<name>Karate</name><version>0.9.6</version>"