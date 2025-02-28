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

class Cat extends Animal {
  void meow() {
    print("Cat is meowing.");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Animal is eating.
  dog.bark(); // Output: Dog is barking.

  Cat cat = Cat();
  cat.eat(); // Output: Animal is eating.
  cat.meow(); // Output: Cat is meowing.
}
