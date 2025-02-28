// Mixins are a way to reuse code across multiple class hierarchies.
// They allow you to add functionality to a class without using inheritance.
// Mixins are especially useful when you want to share behavior between classes that don’t share a common superclass.

// Define a mixin
mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

// Use the mixin in a class
class User with Logger {
  String name;

  User(this.name);

  void greet() {
    log("User $name is greeting you.");
    print("Hello, my name is $name!");
  }
}

class Product with Logger {
  String name;

  Product(this.name);

  void display() {
    log("Product $name is being displayed.");
    print("Product: $name");
  }
}

void main() {
  User user = User("Alice");
  user.greet();
  // Output:
  // Log: User Alice is greeting you.
  // Hello, my name is Alice!

  Product product = Product("Laptop");
  product.display();
  // Output:
  // Log: Product Laptop is being displayed.
  // Product: Laptop
}

// Why Mixins Are Useful:
// Code Reusability:
//
// You can reuse the same functionality (e.g., logging) across multiple classes without duplicating code.
//
// Avoid Multiple Inheritance Issues:
//
// Unlike inheritance, mixins don’t create a rigid class hierarchy. You can mix in multiple behaviors without worrying about the "diamond problem."
//
// Flexibility:
//
// You can add or remove mixins to a class without affecting its inheritance structure.
//
// Separation of Concerns:
//
// Mixins allow you to separate specific behaviors (e.g., logging, serialization) into reusable components.
