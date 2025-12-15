import 'dart:io';
import 'package:dart/student.dart';

void main() {
  List<Student> studentRecord = [];

  void addStudent() {
    print("Enter student name: ");
    String name = stdin.readLineSync()!;

    print("Enter student age: ");
    int age = int.tryParse(stdin.readLineSync()!) ?? 0;

    print("Enter student grade: ");
    double grade = double.tryParse(stdin.readLineSync()!) ?? 0;

    print("Enter student phone: ");
    String phone = stdin.readLineSync()!;

    Student student = Student(name: name, age: age, grade: grade, phone: phone);
    studentRecord.add(student);
    print("Student added successfully!");
  }

  void updateInformation() {
    print("Enter student name you want to update: ");
    String searchName = stdin.readLineSync()!;

    // Flag Variable //
    bool isFound = false;

    for (Student student in studentRecord) {
      if (searchName == student.name) {
        isFound = true;
        print("Enter new grade: ");
        double newGrade = double.tryParse(stdin.readLineSync()!) ?? 0;
        print("Enter new phone: ");
        String newPhone = stdin.readLineSync()!;
        student.updateInformation(newGrade, newPhone);
        print("Information updated successfully!");
      }
    }

    if (isFound == false) {
      print("Student not found!");
    }
  }

  void searchStudent() {
    print("Enter student name you want to search: ");
    String searchName = stdin.readLineSync()!;

    bool isFound = false;

    for (Student student in studentRecord) {
      if (searchName == student.name) {
        isFound = true;
        student.printInfo();
      }
    }

    if (isFound == false) {
      print("Student not found!");
    }
  }

  void deleteStudent() {
    print("Enter student name you want to delete: ");
    String searchName = stdin.readLineSync()!;

    int initialLength = studentRecord.length;
    studentRecord.removeWhere((student) => student.name == searchName);

    if (studentRecord.length < initialLength) {
      print("Student deleted successfully!");
    } else {
      print("Student not found!");
    }
  }

  void displayAllStudents() {
    if (studentRecord.isEmpty) {
      print("No student found!");
    } else {
      for (Student student in studentRecord) {
        student.printInfo();
      }
    }
  }

  while (true) {
    print("Welcome to Student Management System");
    print("1. Add Student");
    print("2. Update Information");
    print("3. Delete Student");
    print("4. Search Student");
    print("5. Display All Students");
    print("6. Exit");

    print("Enter your choice: ");
    // int choice = int.tryParse(stdin.readLineSync()!) ?? 0;
    String choice = stdin.readLineSync()!.toLowerCase();

    switch (choice) {
      case 'add':
        addStudent();
      case 'update':
        updateInformation();
      case 'delete':
        deleteStudent();
      case 'search':
        searchStudent();
      case 'display':
        displayAllStudents();
      case 'exit':
        print("Exit ......");
        return;
      default:
        print("Invalid choice!");
    }
  }
}
