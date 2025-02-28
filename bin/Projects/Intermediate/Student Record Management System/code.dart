import 'dart:io';

void main() {
  List studentRecord = [];

  void addStudent() {
    print("Enter your Name");
    String name = stdin.readLineSync()!;
    print("Enter your Age");
    int? age;
    while (age == null || age <= 0) {
      print('Age must be a positive integer :');
      age = int.parse(stdin.readLineSync()!);
    }
    print("Enter your grade ");
    double grade = double.parse(stdin.readLineSync()!);
    print("Enter your contactDetails");
    String contactDetails = stdin.readLineSync()!;

    Student newStudent = Student(
        name: name, age: age, grade: grade, contactDetails: contactDetails);

    studentRecord.add(newStudent);
    print("Student Added Successfully");
  }

  void updateStudent() {
    print("Enter the name of the student top update");
    String searchName = stdin.readLineSync()!;
    bool isFound = false;
    for (Student student in studentRecord) {
      if (searchName == student.name) {
        isFound = true;
        print("Enter new Grade");
        double grade = double.parse(stdin.readLineSync()!);
        print("Enter your new contactDetails");
        String contactDetails = stdin.readLineSync()!;
        student.updateInformation(grade, contactDetails);
        print("Updated Information");
      }
    }
    if (isFound == false) {
      print("Not found");
    }
  }

  void searchStudent() {
    print("Enter the name of the student top update");
    String searchName = stdin.readLineSync()!;
    bool isFound = false;
    for (Student student in studentRecord) {
      if (searchName == student.name) {
        student.display();
        isFound = true;
      }
    }
    if (isFound == false) {
      print("Not found");
    }
  }

  void displayAllStudents() {
    if (studentRecord.isEmpty) {
      print("No student records");
    } else {
      for (Student student in studentRecord) {
        student.display();
      }
    }
  }

  while (true) {
    print("*** Student Record Management System ***");
    print("1 Add Student");
    print("2 Update Student");
    print("3 Search Student");
    print("4 Display All Students");
    print("5 Exit"); // return //

    print("Enter your choice");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addStudent();
      case 2:
        updateStudent();
      case 3:
        searchStudent();
      case 4:
        displayAllStudents();
      case 5:
        print('Exiting the system...');
        return;
      default:
        print("Invalid choice [1 : 5]");
    }
  }
}

class Student {
  String name;
  int age;
  double grade;
  String contactDetails;

  Student({
    required this.name,
    required this.age,
    required this.grade,
    required this.contactDetails,
  });

  void updateInformation(double newGrade, String newContactDetails) {
    grade = newGrade;
    contactDetails = newContactDetails;
  }

  void display() {
    print(
        "Student name : $name , Student age : $age , Student grade : $grade , Student contactDetails : $contactDetails");
  }
}
