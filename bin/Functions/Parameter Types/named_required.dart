void printName({required String firstName, required String lastName}) {
  print("Full Name: $firstName $lastName");
}

void main() {
  printName(firstName: "John", lastName: "Doe"); // Output: Full Name: John Doe
}
