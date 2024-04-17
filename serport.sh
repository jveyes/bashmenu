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

# Function to display status messages with colors
display_status() {
    local color=$1
    local message=$2
    printf "\e[1;${color}m%s\e[0m\n" "$message"
}

# Change to the local repository directory
cd "$LOCAL_PATH"

# Add and commit the changes
display_status 34 "Adding all changes to the local server..."
git add .
display_status 32 "Committing changes with timestamp..."
git commit -m "$(date +"%Y-%m-%d %H:%M:%S")"

# Push the changes to the remote repository
display_status 34 "Pushing changes to the GitHub repository..."
git push
display_status 32 "Push successful to GitHub!"

# Pull the changes on the remote repository
display_status 34 "Pulling changes from the GitHub repository..."
ssh "$SERVER" "cd '$REMOTE_PATH' && git pull"
display_status 32 "Pull successful from GitHub!"

# Display the Git log
display_status 34 "Recent Git commits:"
git log --oneline -5
