import 'dart:io';

class Student {
  String id;
  String name;
  int age;

  Student(this.id, this.name, this.age);

  @override
  String toString() {
    return 'ID: $id, Name: $name, Age: $age';
  }
}

List<Student> students = [];

void displayMenu() {
  print('\n==== Student Management System ====');
  print('1. Create Student');+
  print('2. Read Students');
  print('3. Update Student');
  print('4. Delete Student');
  print('5. Exit');
  stdout.write('Select an option: ');
}

void createStudent() {
  stdout.write('Enter Student ID: ');
  String id = stdin.readLineSync()!;
  stdout.write('Enter Student Name: ');
  String name = stdin.readLineSync()!;
  stdout.write('Enter Student Age: ');
  int age = int.parse(stdin.readLineSync()!);

  Student student = Student(id, name, age);
  students.add(student);

  print('Student added successfully.');
}

void readStudents() {
  if (students.isEmpty) {
    print('No students available.');
  } else {
    print('\n==== Students List ====');
    for (Student student in students) {
      print(student);
    }
  }
}

Student? findStudentById(String id) {
  for (Student student in students) {
    if (student.id == id) {
      return student;
    }
  }
  return null;
}

void updateStudent() {
  stdout.write('Enter Student ID to update: ');
  String id = stdin.readLineSync()!;
  Student? student = findStudentById(id);

  if (student != null) {
    stdout.write('Enter new name: ');
    student.name = stdin.readLineSync()!;
    stdout.write('Enter new age: ');
    student.age = int.parse(stdin.readLineSync()!);

    print('Student updated successfully.');
  } else {
    print('Student not found.');
  }
}

void deleteStudent() {
  stdout.write('Enter Student ID to delete: ');
  String id = stdin.readLineSync()!;
  Student? student = findStudentById(id);

  if (student != null) {
    students.remove(student);
    print('Student deleted successfully.');
  } else {
    print('Student not found.');
  }
}

void main() {
  while (true) {
    displayMenu();
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        createStudent();
        break;
      case 2:
        readStudents();
        break;
      case 3:
        updateStudent();
        break;
      case 4:
        deleteStudent();
        break;
      case 5:
        print('Exiting...');
        exit(0);
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
