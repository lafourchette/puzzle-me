Feature: LaFourchette Developer test
  SQL tests

Scenario: sql1 Basic database access
Write a program that return the name of the first client in test.db:clients

  Given I have a file named "test.db"
  When I run "solutions/sql1.php"
  Then I should get:
    """
    Alice
    """
