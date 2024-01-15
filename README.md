# Bash Script Menu

This Bash script provides a simple interactive menu with three commands and an option to exit. Each command is executed within the script, and the user is guided through the process. The script also provides colorful and formatted messages for better user experience.

## Usage

### Requirements

- Bash

### How to Run

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/your-repository.git
    ```

2. Navigate to the script directory:

    ```bash
    cd your-repository
    ```

3. Run the script:

    ```bash
    bash menu_script.sh
    ```

4. Follow the on-screen instructions to navigate the menu.

## Script Overview

### Functions

1. **display_menu():** Displays a formatted menu with numbered options.
2. **execute_command1():** Executes Command 1 and displays a message.
3. **execute_command2():** Prompts the user for a parameter, executes Command 2, and displays a message.
4. **execute_command3():** Executes Command 3 and displays a message.
5. **task_started():** Displays a message indicating the start of the task.
6. **task_ended():** Displays a message indicating the end of the task.
   
### Main Loop

- The script contains a main loop that displays the menu, reads user input, and executes the corresponding function based on the choice.

## Customize

- You can customize the commands executed in `execute_command1()`, `execute_command2()`, and `execute_command3()` by adding your own commands.

- Adjust colors, formatting, or messages based on your preferences.

## Contributing

Contributions are welcome! If you find a bug or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
