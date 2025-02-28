// Define a mixin for logging
mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

// Define an enum for user roles
enum UserRole {
  admin,
  moderator,
  user,
}

// Use the mixin and enum in a class
class User with Logger {
  String name;
  UserRole role;

  User(this.name, this.role);

  void displayRole() {
    switch (role) {
      case UserRole.admin:
        log("User $name is an admin.");
        print("Welcome, Admin $name!");
        break;
      case UserRole.moderator:
        log("User $name is a moderator.");
        print("Welcome, Moderator $name!");
        break;
      case UserRole.user:
        log("User $name is a regular user.");
        print("Welcome, User $name!");
        break;
    }
  }
}

void main() {
  User admin = User("Alice", UserRole.admin);
  admin.displayRole();
  // Output:
  // Log: User Alice is an admin.
  // Welcome, Admin Alice!

  User user = User("Bob", UserRole.user);
  user.displayRole();
  // Output:
  // Log: User Bob is a regular user.
  // Welcome, User Bob!
}

// Key Takeaways:
// Mixins:
//
// Reuse code across unrelated classes.
//
// Avoid inheritance issues.
//
// Add flexibility and separation of concerns.
//
// Enums:
//
// Define a set of named constants.
//
// Improve readability and type safety.
//
// Simplify handling of multiple cases.
