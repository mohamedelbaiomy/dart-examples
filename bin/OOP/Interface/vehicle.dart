// Interface: Define a contract for classes to implement.
// In Dart, every class implicitly defines an interface. You can use the implements keyword to implement an interface.

abstract class Vehicle {
  void start();
  void stop();
}

class Car implements Vehicle {
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
  Car car = Car();
  car.start(); // Output: Car started.
  car.stop(); // Output: Car stopped.
}
