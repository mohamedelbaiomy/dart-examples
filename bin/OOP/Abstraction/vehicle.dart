// Abstraction is the concept of hiding the implementation details and showing only the necessary features of an object.

abstract class Vehicle {
  void start(); // Abstract method
  void stop(); // Abstract method
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car started.");
  }

  @override
  void stop() {
    print("Car stopped.");
  }
}

void main() {
  Vehicle car = Car();
  car.start(); // Output: Car started.
  car.stop(); // Output: Car stopped.
}
