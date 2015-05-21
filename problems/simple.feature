Feature: LaFourchette Developer test
  Simple tests

  Scenario: simple1 Hello world !
  Write a program that prints "Hello world !" on stdout.

    When I run "solutions/simple1.php"
    Then I should get:
    """
    Hello world !
    """

  Scenario Outline: simple2 Print first argument !
  Write a program that prints the first argument on stdout.

    When I run "solutions/simple2.php" with parameter "<somestring>"
    | "foobar" |
    Then I should get:
    """
    <somestring>
    """

    Examples:
    | somestring |
    | foobar     |
    | oukile     |
