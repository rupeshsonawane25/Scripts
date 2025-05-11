#!/bin/bash

<<help
   This script will help to take
   the periodic backups.
help

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync backups/ s3://backup-bucket-d

echo "Backup Completed"
