<?php
for($i=1; $i<=100;$i++){
	if(! ($i % 5) && ! ($i % 3)){echo 'FizzBuzz';}
	elseif(! ($i % 5)){echo 'Buzz';}
	elseif(! ($i % 3)){echo 'Fizz';}
	else {echo $i;}
	echo PHP_EOL;
}