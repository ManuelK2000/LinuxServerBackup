#!/bin/bash

TARGET="/root/Backup/Backups-Webserver/"
SOURCE="/root/Backup/demoDaten/ /etc/apache2/"

MYSQL_HOSTNAME="localhost"
MYSQL_USERNAME="root"
MYSQL_PASSWORD="1a2b3c"
MYSQL_DATABASES="default"

MYSQL="mysql"
MYSQLDUMP="mysqldump"
MYSQL_PORT="3306"


TIMESTAMP=$(date +%Y-%m-%d)
TARGET=$TARGET/$TIMESTAMP

# Setup
mkdir -p $TARGET
mkdir -p $TARGET/sql-db

# Dump MySQL database

mysqldump -h ${MYSQL_HOSTNAME} \
   -P ${MYSQL_PORT} \
   -u ${MYSQL_USERNAME} \
   -p${MYSQL_PASSWORD} \
   ${MYSQL_DATABASES} | gzip > $TARGET/sql-db/$MYSQL_DATABASES.sql.gz
 
if [ $? -eq 0 ]; then
  echo "Database backup successfully completed"
else
  echo "Error found during backup"
  exit 1
fi

# To get a list of databases
#databases=`$MYSQL -u$MYSQL_USERNAME -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema)"`
#
# To dump each database in a separate file
#for db in $databases; do
#	echo $db
#	$MYSQLDUMP --force --opt --skip-lock-tables --user=$MYSQL_USERNAME -p$MYSQL_PASSWORD --databases $db | gzip > "$TARGET/sql-db/$db.sql.gz"
#done

# Create backup

# Cleanup

# Rotate backups
