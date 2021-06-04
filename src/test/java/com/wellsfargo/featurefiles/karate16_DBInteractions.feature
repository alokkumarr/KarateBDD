Feature: Karate Test Suite 18
  DB interactions

  Background: dbInit
    * def db = Java.type("com.wellsfargo.utils.DBUtils")

  @db
  @select
  Scenario: select stmt TestCase 1
  This is for db select stmt test case1

  db select validation 1

    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains 'Karate'

  @db
  @insert
  Scenario: insert stmt TestCase 2
  This is for db insert stmt test case2

  db select validation 1

    * def result = db.insertStatement("Insert into tools values(111,'java','python111')")
    * print result
    * match result == "Success"
    * def rows = db.selectStatement("select * from tools where toolid=111")
    * print rows
    * match rows contains "python111"


  @db
  @update
  Scenario: update stmt TestCase 3
  This is for db update stmt test case3

    * def rowsAffected = db.updateStatement("update tools set toolname='sample3' where toolid=111")
    * print rowsAffected
    * assert rowsAffected >= 1
    * def rows = db.selectStatement("select * from tools where toolid=111")
    * print rows
    * match rows contains "python111"

  @db
  @delete
  Scenario: delete stmt TestCase 4
  This is for db delete stmt test case4

    * def rowsAffected1 = db.updateStatement("delete from tools where toolid=111")
    * print rowsAffected1
    * assert rowsAffected1 >= 0
    * def rows = db.selectStatement("select * from tools where toolid=111")
    * print rows
    #* match rows contains "python111"