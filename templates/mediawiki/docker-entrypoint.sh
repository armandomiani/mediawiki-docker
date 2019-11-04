#!/bin/bash

php maintenance/install.php \
	--confpath /var/www/html/ \
	--dbname mywiki \
	--dbtype sqlite \
	--pass somepassword  \
	--scriptpath "" \
	--server "http://${MEDIAWIKI_HOSTNAME}:${MEDIAWIKI_PORT}" \
	"${MEDIAWIKI_SITENAME}" \
	"${MEDIAWIKI_ADMIN_USER}"

chown -R www-data:www-data /data

COPY docker-entrypoint.sh /docker-entrypoint.sh

exec "$@"
