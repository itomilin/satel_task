#!/bin/bash

set -e

PATH_TO_BACKUP=$1
if [[ -z $PATH_TO_BACKUP ]]; then
    echo "[ERR] Path to backup is not set"
    exit 1
fi

DB_PATH="./docker/db_data"
if [[ ! -d $DB_PATH ]]; then
    rm -vf ./docker/db_data/*
fi
tar xfv $1 ./docker/db_data

echo "<<RESTORE_DONE>>"

