// Factory Constructors
// Factory constructors are special constructors that don’t always create a new instance of the class.
// Instead, they can return an existing instance, a subclass instance, or even null.
// They are useful for implementing design patterns like singleton, caching, or conditional instantiation.

class DatabaseConnection {
  // Static variable to hold the single instance
  static DatabaseConnection? _instance;

  // Private constructor
  DatabaseConnection._() {
    print("Database connection created.");
  }

  // Factory constructor
  factory DatabaseConnection() {
    if (_instance == null) {
      _instance = DatabaseConnection._();
    }
    return _instance!;
  }

  // Instance method
  void query(String sql) {
    print("Executing query: $sql");
  }
}

void main() {
  // Create instances of DatabaseConnection
  DatabaseConnection connection1 = DatabaseConnection();
  DatabaseConnection connection2 = DatabaseConnection();

  // Check if both instances are the same
  print(connection1 == connection2); // Output: true

  // Use the instance
  connection1.query(
      "SELECT * FROM users"); // Output: Executing query: SELECT * FROM users
}

// Why Factory Constructors Are Useful:
// Control Object Creation:
//
// Factory constructors allow you to control how and when instances are created (e.g., reuse existing instances, return subclasses).
//
// Singleton Pattern:
//
// Factory constructors are commonly used to implement the singleton pattern, ensuring only one instance of a class exists.
//
// Caching:
//
// You can use factory constructors to cache and reuse instances, improving performance.
//
// Conditional Instantiation:
//
// Factory constructors can return different instances based on conditions (e.g., return a subclass based on input).

// Factory Constructors:
//
// Control object creation.
//
// Useful for singletons, caching, and conditional instantiation.
//
// Don’t always create new instances.
