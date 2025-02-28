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

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Animal is eating.
  dog.bark(); // Output: Dog is barking.
}
