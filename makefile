PHP=`which php`

composer.phar:
	$(PHP) -r "readfile('https://getcomposer.org/installer');" | $(PHP)

build: composer.phar
	$(PHP) composer.phar install --prefer-dist

test:
	bin/behat
