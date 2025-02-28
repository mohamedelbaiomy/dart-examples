import 'dart:io';

void main() {
  Map<String, double> studentGrades = {};

  print('Enter student names and their grades (type "exit" to finish):');

  while (true) {
    print('Enter student name:');
    String name = stdin.readLineSync()!;
    if (name.isEmpty || name.toLowerCase() == 'exit') {
      break;
    }

    print('Enter grade for $name:');
    String? gradeInput = stdin.readLineSync();
    if (gradeInput != null) {
      double? grade = double.tryParse(gradeInput);
      if (grade != null) {
        studentGrades[name] = grade;
      } else {
        print('Invalid grade input. Please enter a number.');
      }
    }
  }

  print('Student Grades:');
  studentGrades.forEach((key, value) {
    print('$key: $value');
  });
}
