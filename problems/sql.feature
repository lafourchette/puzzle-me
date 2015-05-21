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

  Scenario: sql2 Who answer the phone ?
  Write a program that return the name of the clients that have received at least
  one call. It should outputs an entry per line, in the format id;name...

    Given I have a file named "test.db"
    When I run "solutions/sql2.php"
    Then I should have these lines:
    """
    2;Bob
    4;David
    3;Charle
    """

  Scenario: sql3 Who's asocial ?
  Write a program that return the name of the clients that have NOT received a
  single call. It should outputs an entry per line, in the format id;name...

    Given I have a file named "test.db"
    When I run "solutions/sql3.php"
    Then I should have these lines:
    """
    1;Alice
    """

  Scenario: sql4 Who's really asocial ?
  Write a program that return the name of the clients that have NOT called
  somebody.
  It should outputs an entry per line, in the format id;name...

    Given I have a file named "test.db"
    When I run "solutions/sql4.php"
    Then I should have these lines:
    """
    1;Alice
    """

  Scenario: sql5 Shall we fire David ?
  Write a program that return the total cost of all calls fomr the client 4
  It should outputs a single line with an integer

  Scenario: sql6 Who shall we fire ?
  Write a program that return the total cost for each clients.
  It should outputs an entry per line, in the format id;cost...
