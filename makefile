.DEFAULT_GOAL:=test

vendor:
	composer install --prefer-dist

test: vendor
	bin/behat

score: vendor
	bin/behat -f progress
