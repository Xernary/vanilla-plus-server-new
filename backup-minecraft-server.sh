#!/bin/bash

SERVER_PATH="/home/romanogiovanni777/server/attuale/backup"
BACKUP_PATH="/home/romanogiovanni777/server/attuale/backup-git"

# copy server folder to backup folder
rm -r "$BACKUP_PATH/backup"
cp -r "$SERVER_PATH" "$BACKUP_PATH/backup"

# push backup folder to github
cd "$BACKUP_PATH"
git add .
git commit -m "server backup"
git push

# write backup timestamp to file

