Feature: LaFourchette Developer test
  Less Simple tests

Scenario: hard1 FizzBuzz
Write a program that prints the numbers from 1 to 100. But for multiples of 
three print “Fizz” instead of the number and for the multiples of five print 
“Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

  When I run "src/hard1.php"
  Then Each line numbered modulo 3 shall print Fizz
  And Each line numbered modulo 5 shall print Buzz