void printName({String firstName = "Unknown", String lastName = "Unknown"}) {
  print("Full Name: $firstName $lastName");
}

void main() {
  printName(); // Output: Full Name: Unknown Unknown
  printName(firstName: "John"); // Output: Full Name: John Unknown
  printName(lastName: "Doe"); // Output: Full Name: Unknown Doe
  printName(firstName: "John", lastName: "Doe"); // Output: Full Name: John Doe
}
