#!/bin/bash

# Set the server details
SERVER="ubuntu@test.jemavi.co"
REMOTE_PATH="/home/ubuntu/got/bashmenu"
LOCAL_PATH="/home/stk/GIT/bashmenu"

# Function to display a progress bar
display_progress_bar() {
    local progress=$1
    local total_length=20
    local filled_length=$((total_length * progress / 100))
    local empty_length=$((total_length - filled_length))

    printf "\r[%-${total_length}s] %3d%%  " \
           $(printf "#%.0s" $(seq 1 $filled_length)) \
           $progress
}

# Change to the local repository directory
cd "$LOCAL_PATH"

# Add and commit the changes
echo -e "\e[1;34mAdding all changes...\e[0m"
git add .
echo -e "\e[1;32mCommitting changes with timestamp...\e[0m"
git commit -m "$(date +"%Y-%m-%d %H:%M:%S")"

# Push the changes to the remote repository
echo -e "\e[1;34mPushing changes to the remote repository...\e[0m"
for i in {1..100}; do
    display_progress_bar $i
    sleep 0.05
done
echo -e "\e[1;32mPush successful!\e[0m"

# Pull the changes on the remote repository
echo -e "\e[1;34mPulling changes on the remote repository...\e[0m"
ssh "$SERVER" "cd '$REMOTE_PATH' && git pull"
echo -e "\e[1;32mPull successful!\e[0m"
