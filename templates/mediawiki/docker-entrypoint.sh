#!/bin/bash

php maintenance/install.php \
	--confpath /var/www/html/ \
	--dbname mywiki \
	--dbtype sqlite \
	--pass "${MEDIAWIKI_ADMIN_PASSWORD}"  \
	--scriptpath "" \
	--server "http://${MEDIAWIKI_HOSTNAME}:${MEDIAWIKI_PORT}" \
	"${MEDIAWIKI_SITENAME}" \
	"${MEDIAWIKI_ADMIN_USER}"

chown -R www-data:www-data /data

exec "$@"
