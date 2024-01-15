# Function to display the menu
display_menu() {
    clear
    echo "╭─────────────────────────────╮"
    echo "│ 1. Execute Command 1        │"
    echo "│ 2. Execute Command 2        │"
    echo "│ 3. Execute Command 3        │"
    echo "│ 4. Exit                     │"
    echo "╰─────────────────────────────╯"
}

# Function to execute command 1
execute_command1() {
    echo "Executing Command 1"
    # Add your command here
    
}

# Function to execute command 2
execute_command2() {
    read -p "Enter a value for Command 2: " param
    echo "Executing Command 2 with parameter: $param"
    # Add your command here using $param
}

# Function to execute command 3
execute_command3() {
    echo "Executing Command 3"
    # Add your command here
}

# Main loop for the menu
while true; do
    display_menu

    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            echo -e "╭─────────────────────────────────────────────╮"
            echo -e "│ \e[93mTHE TASK HAS STARTED RUNNING\e[0m                │"
            echo -e "╰─────────────────────────────────────────────╯"
            execute_command1
            ;;
        2)
            echo -e "╭─────────────────────────────────────────────╮"
            echo -e "│ \e[93mTHE TASK HAS STARTED RUNNING\e[0m                │"
            echo -e "╰─────────────────────────────────────────────╯"
            execute_command2
            ;;
        3)
            echo -e "╭─────────────────────────────────────────────╮"
            echo -e "│ \e[93mTHE TASK HAS STARTED RUNNING\e[0m                │"
            echo -e "╰─────────────────────────────────────────────╯"    
            execute_command3
            ;;
        4)
            echo ""
            echo -e "╭─────────────────────────────────────────────╮"
            echo -e "│ \e[31mExiting the menu. Goodbye!\e[0m                  │"
            echo -e "╰─────────────────────────────────────────────╯"
            echo ""
            exit 0
            ;;
        *)
            echo ""
            echo -e "\e[31mInvalid choice. Please enter a number between 1 and 4.\e[0m"
            ;;
    esac

    echo ""
    echo -e "╭─────────────────────────────────────────────╮"
    echo -e "│ \e[32mTHE TASK HAS FINISHED RUNNING\e[0m               │"
    echo -e "╰─────────────────────────────────────────────╯"
    read -p "Press Enter to continue..."
done