Feature: LaFourchette Developer test
  Simple tests

Scenario: simple1 Hello world !
Write a program that prints "Hello world !" on stdout.

  When I run "src/simple1.php"
  Then I should get:
    """
    Hello world !
    """

