# Dart Console-Based CRUD Project

---

# Student Management System - Console-Based CRUD Project

This project is a simple console-based CRUD (Create, Read, Update, Delete) application developed using Dart. It allows you to manage student information, including their ID, name, and age, through a text-based interface.

## Features

- **Create Student**: Add a new student by entering their ID, name, and age.
- **Read Students**: View a list of all students currently in the system.
- **Update Student**: Modify the details of an existing student by ID.
- **Delete Student**: Remove a student from the system by ID.
- **Exit**: Exit the application.

## How It Works

1. **Display Menu**: The application starts by displaying a menu with options to perform CRUD operations.
2. **User Input**: The user selects an option by entering the corresponding number.
3. **Operations**: Based on the user's choice, the application performs the selected operation:
   - **Create**: Prompts the user to enter the student's details, then adds the student to the list.
   - **Read**: Displays the list of all students.
   - **Update**: Prompts the user to enter the ID of the student to update, then allows updating the student's details.
   - **Delete**: Prompts the user to enter the ID of the student to delete, then removes the student from the list.
   - **Exit**: Exits the application.

## Prerequisites

- Dart SDK installed on your machine.

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/dev-arham/Dart-CRUD.git
   ```

2. Navigate to the project directory:

   ```bash
   cd Dart-CRUD
   ```

3. Run the application:

   ```bash
   dart run
   ```

4. Follow the on-screen instructions to manage students in the system.

## Example Usage

```bash
==== Student Management System ====
1. Create Student
2. Read Students
3. Update Student
4. Delete Student
5. Exit
Select an option: 1
Enter Student ID: S101
Enter Student Name: Arham
Enter Student Age: 18
Student added successfully.

==== Student Management System ====
1. Create Student
2. Read Students
3. Update Student
4. Delete Student
5. Exit
Select an option: 2

==== Students List ====
ID: S101, Name: Arham, Age: 18
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please fork the repository, make your changes, and submit a pull request.

---

Feel free to customize the content to better match your specific project details and requirements.