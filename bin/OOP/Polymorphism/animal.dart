// Polymorphism allows objects of different classes to be treated as objects of a common superclass.
// It can be achieved through method overriding and method overloading (though Dart doesn't support method overloading).

class Animal {
  void makeSound() {
    print("Animal makes a sound.");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks.");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows.");
  }
}

void main() {
  Animal dog = Dog();
  Animal cat = Cat();

  dog.makeSound(); // Output: Dog barks.
  cat.makeSound(); // Output: Cat meows.
}
