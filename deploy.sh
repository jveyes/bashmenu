#!/bin/bash

# Set the server details
SERVER="ubuntu@test.jemavi.co"
REMOTE_PATH="/home/ubuntu/got/bashmenu"
LOCAL_PATH="/home/stk/GIT/bashmenu"
cd "$LOCAL_PATH"
git pull
ssh "$SERVER" "cd '$REMOTE_PATH' && git pull"
git add .
git commit -m "$(date +"%Y-%m-%d %H:%M:%S")"
git push
echo $(date +"%Y-%m-%d %H:%M:%S")
