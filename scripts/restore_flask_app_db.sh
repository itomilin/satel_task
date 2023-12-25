#!/bin/bash

set -e

PATH_TO_BACKUP=$1
if [[ -z $PATH_TO_BACKUP ]]; then
    echo "[ERR] Path to backup is not set"
    exit 1
fi

tar xfv $1 ./docker/db_data

echo "<<RESTORE_DONE>>"

