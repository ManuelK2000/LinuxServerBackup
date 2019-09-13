#!/bin/bash

# local-backup.sh
# This script will create a backup on the local machine
# And it will support the commands backup and restore


#SOURCE="/etc/ /var/ /home/"
SOURCE="/root/Backup/demoDaten/ /etc/apache2/"
TARGET="/root/Backup/Backups/"

TIMESTAMP=$(date +%Y-%m-%d)


case "$1" in
	backup)
		
		echo "Backup started"
		
		# Create directory if not already created
		mkdir -p $TARGET -v
		
		# Create backup
		tar cvpzf $TARGET/backup_$TIMESTAMP.tar.gz $SOURCE
		
		echo "Backup compleated"	
		
	;;
	restore)
		
		if [ -z "$2" ]; then
			echo $"Usage: $0 restore <filename>"
			exit 1
		fi
		
		restoreArchive="$TARGET$2"
		
		if [ ! -f "$restoreArchive" ]; then
			echo "Restore failed: File not found!"
			echo $restoreArchive
			exit 1
		fi
		
		echo "Restore backup"
		
		tar xvpzf $restoreArchive -C /
		
		echo "Restore completed"
		
	;;
	list)
		echo "List of all available backups in $TARGET:"
		find $TARGET -name "*tar.gz" -exec basename \{} \;
	;;
	help)
		echo "This function is still in development!"
	;;
	*)
		echo $"Usage: $0 {backup|restore|list|help}"
		exit 1
esac
