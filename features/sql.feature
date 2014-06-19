Feature: LaFourchette Developer test
  SQL tests

Scenario: test3 Basic database access
Write a program that return the name of the first client in test.db:clients

  Given I have a file named "test.db"
  When I run "src/test3.php"
  Then I should get:
    """
    Alice
    """

Scenario: test4 SQL 1
Write a program that return the name of the clients that have received at least
one call. It should outputs an entry per line, in the format id;name...

  Given I have a file named "test.db"
  When I run "src/test4.php"
  Then I should have these lines:
    """
    2;Bob
    4;David
    3;Charle
    """

Scenario: test5 SQL 1
Write a program that return the name of the clients that have NOT received a
single call. It should outputs an entry per line, in the format id;name...

  Given I have a file named "test.db"
  When I run "src/test5.php"
  Then I should have these lines:
    """
    1;Alice
    """

Scenario: test5 SQL 1

Scenario: test8 SQL 1
Write a program that return the total cost for each clients.
It should outputs an entry per line, in the format id;cost...

Scenario: test7 SQL 1
Write a program that return the total cost of all calls fomr the client 4
It should outputs a single line with an integer

Scenario: test5 SQL 1
Write a program that return the name of the clients that have NOT called
somebody.
It should outputs an entry per line, in the format id;name...

  Given I have a file named "test.db"
  When I run "src/test5.php"
  Then I should have these lines:
    """
    1;Alice
    """