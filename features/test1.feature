Feature: Tests
  LaFourchette Developer test

Scenario: Hello world !
  Given I have a file named "src/test1.php"
  When I run "src/test1.php"
  Then I should get:
    """
    Hello world !
    """

Scenario: FizzBuzz
  Given I have a file named "src/test2.php"
  When I run "src/test2.php"
  Then Each line numbered modulo 3 shall print Fizz
  And Each line numbered modulo 5 shall print Buzz