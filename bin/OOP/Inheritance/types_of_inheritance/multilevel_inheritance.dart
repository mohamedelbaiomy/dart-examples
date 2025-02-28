class Animal {
  void eat() {
    print("Animal is eating.");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking.");
  }
}

class Puppy extends Dog {
  void cry() {
    print("Puppy is crying.");
  }
}

void main() {
  Puppy puppy = Puppy();
  puppy.eat(); // Output: Animal is eating.
  puppy.bark(); // Output: Dog is barking.
  puppy.cry(); // Output: Puppy is crying.
}
