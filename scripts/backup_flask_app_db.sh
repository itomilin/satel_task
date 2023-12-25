#!/bin/bash

set -e

mkdir -p ./backups

BACKUP_NAME=backup_db_`date +%H-%M-%S`
echo "<<RUNNNING_BACKUP_$BACKUP_NAME>>"

tar cfz ./backups/$BACKUP_NAME.tar.gz ./docker/db_data
ls -l ./backups

echo "<<BACKUP_DONE>>"

