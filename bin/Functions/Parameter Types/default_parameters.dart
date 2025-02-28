void greetPerson({String name = "World", String greeting = "Hello"}) {
  print("$greeting, $name!");
}

void main() {
  greetPerson(); // Output: Hello, World!
  greetPerson(name: "Alice"); // Output: Hello, Alice!
  greetPerson(greeting: "Hi"); // Output: Hi, World!
}
