// Static members (variables and methods) belong to the class itself rather than to instances of the class.
// They are useful for defining class-level properties and methods that don’t depend on instance-specific data.

class Counter {
  // Static variable
  static int instanceCount = 0;

  // Instance variable
  int? id;

  // Constructor
  Counter() {
    id = ++instanceCount; // Increment instance count and assign it to id
  }

  // Static method
  static void printInstanceCount() {
    print("Total instances created: $instanceCount");
  }

  // Instance method
  void printId() {
    print("Instance ID: $id");
  }
}

void main() {
  // Create instances of Counter
  Counter counter1 = Counter();
  Counter counter2 = Counter();
  Counter counter3 = Counter();

  // Access instance methods
  counter1.printId(); // Output: Instance ID: 1
  counter2.printId(); // Output: Instance ID: 2
  counter3.printId(); // Output: Instance ID: 3

  // Access static method
  Counter.printInstanceCount(); // Output: Total instances created: 3
}

// Why Static Members Are Useful:
// Shared State:
//
// Static variables are shared across all instances of a class, making them ideal for tracking class-level data (e.g., instance counts, configuration settings).
//
// Utility Methods:
//
// Static methods can be used to define utility functions that don’t depend on instance-specific data (e.g., mathematical calculations, formatting functions).
//
// Memory Efficiency:
//
// Static members are allocated once per class, reducing memory usage compared to instance members.

// Static Members:
//
// Belong to the class itself.
//
// Useful for shared state and utility methods.
//
// Memory-efficient.
