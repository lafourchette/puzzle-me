Feature: Tests
  LaFourchette Developer test

Scenario: test1 Hello world !
  Given I have a file named "src/test1.php"
  When I run "src/test1.php"
  Then I should get:
    """
    Hello world !
    """

Scenario: test2 FizzBuzz
  Given I have a file named "src/test2.php"
  When I run "src/test2.php"
  Then Each line numbered modulo 3 shall print Fizz
  And Each line numbered modulo 5 shall print Buzz

Scenario: test3 Basic database access
  Given I have a file named "src/test3.php"
  When I run "src/test3.php"
  Then I should get:
    """
    Alice
    """

Scenario: test4 SQL 1
  Given I have a file named "src/test3.php"
  When I run "src/test3.php"
  Then I should have these line:
    """
    2;Bob
    4;David
    3;Charle
    """

Scenario: test5 SQL 1
  Given I have a file named "src/test3.php"
  When I run "src/test3.php"
  Then I should have these line:
    """
    2;Bob
    4;David
    3;Charle
    """