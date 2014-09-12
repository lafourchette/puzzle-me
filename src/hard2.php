<?php

class Factory {
	public function make($colour) {
		return new Firework();
	}
}

interface Firework { function ignite(); }

class BlueFirework implements Firework {
	function ignite() {
		echo 'red boom' . PHP_EOL;
	}
}

$f = new Factory();
$blue = $f->make('blue');
$red  = $f->make('red');

$blue->ignite();
