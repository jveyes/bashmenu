#!/bin/bash

display_menu() { clear; echo "1. Execute Command 1 (shows local user)"; echo "2. Execute Command 2 (reads name)"; echo "3. Execute Command 3 (shows disk info)"; echo "4. Exit"; }

execute_command1() { echo "Executing Command 1..."; echo -n "Your local username is: "; whoami; }

execute_command2() { echo "Executing Command 2..."; read -p "Enter your name: " name; echo -e "Executing Command 2 with parameter (name): [\e[31m\e[1m$name\e[31m\e[0m]"; }

execute_command3() { echo "Executing Command 3"; df -h | column -t; }

task_started() { echo -e "Task started..."; }

task_ended() { echo -e "Task finished..."; }

while true; do
    display_menu; read -p "Enter your choice (1-4): " choice
    case $choice in
        1) task_started; execute_command1; task_ended ;;
        2) task_started; execute_command2; task_ended ;;
        3) task_started; execute_command3; task_ended ;;
        4) echo -e "Exiting the menu. Goodbye!"; exit 0 ;;
        *) echo -e "\e[31mInvalid choice [\e[1m$choice\e[0m\e[31m]\e[0m\nPlease enter a number between 1 and 4.\n" ;;
    esac
    echo -e -n "\e[1mPress Enter to continue...\e[0m"; read -s -n 1 -p ""
done