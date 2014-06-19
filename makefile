composer.phar:
	php -r "readfile('https://getcomposer.org/installer');" | php

build: composer.phar
	php composer.phar install --prefer-dist

test:
	bin/behat