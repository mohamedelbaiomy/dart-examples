class Student {
  String name;
  int age;
  double grade;
  String phone;

  Student({
    required this.name,
    required this.age,
    required this.grade,
    required this.phone,
  });

  void updateInformation(double newGrade, String newPhone) {
    grade = newGrade;
    phone = newPhone;
  }

  void printInfo() {
    print("Student Name: $name, Age: $age, Grade: $grade, Phone: $phone");
  }
}
