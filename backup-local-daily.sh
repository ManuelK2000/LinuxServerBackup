#!/bin/bash

TARGET = backups/daily/


TIMESTAMP=$(date +%Y-%m-%d)


# Create directory if not already created
mkdir -p $TARGET/$(date +%u)_$(date +%a)_$TIMESTAMP
mkdir -p backups/backup_$TIMESTAMP/


echo "Backup compleated"
