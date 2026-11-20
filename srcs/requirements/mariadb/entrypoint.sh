#!/bin/bash

mariadbd-safe &

until	mariadb-admin ping --silent; do
	sleep 1
done

mariadb << EOF
ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWD}';
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USR_NAME}'@'%' IDENTIFIED BY '${DB_USR_PASSWD}';
FLUSH PRIVILEGES;
EOF

mariadb-admin -u root -p$ROOT_PASSWD shutdown

exec mariadbd-safe
