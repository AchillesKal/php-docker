#!/bin/sh
set -e

if [ "$1" = 'frankenphp' ] || [ "$1" = 'php' ] || [ "$1" = 'bin/console' ]; then
	# Install the project the first time PHP is started
	if [ ! -f composer.json ]; then
		composer init --no-interaction --name="your/project-name"
	fi

	if [ ! -d 'vendor/' ]; then
		composer install --prefer-dist --no-progress --no-interaction
	fi

#	setfacl -R -m u:www-data:rwX -m u:"$(whoami)":rwX var
#	setfacl -dR -m u:www-data:rwX -m u:"$(whoami)":rwX var
fi

exec docker-php-entrypoint "$@"
