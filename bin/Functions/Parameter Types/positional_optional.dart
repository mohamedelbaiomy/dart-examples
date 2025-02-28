void printName(String firstName, [String? lastName]) {
  if (lastName != null) {
    print("Full Name: $firstName $lastName");
  } else {
    print("First Name: $firstName");
  }
}

void main() {
  printName("John"); // Output: First Name: John
  printName("John", "Doe"); // Output: Full Name: John Doe
}
