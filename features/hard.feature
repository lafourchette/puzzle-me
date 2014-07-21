Feature: LaFourchette Developer test
  Less Simple tests

Scenario: hard1 FizzBuzz
Write a program that prints the numbers from 1 to 100. But for multiples of 
three print “Fizz” instead of the number and for the multiples of five print 
“Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

  When I run "src/hard1.php"
  Then lines "3,9,12" shall print "Fizz"
  And lines "5,50,65" shall print "Buzz"
  And lines "15,30,45" shall print "FizzBuzz"
  And lines "11" shall print "11"
  And shall have 100 lines.