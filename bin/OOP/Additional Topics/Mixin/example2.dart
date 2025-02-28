// the on keyword is used with mixins to restrict the mixin to only be used by classes that extend or implement a specific superclass.
// This is useful when you want to ensure that the mixin is only applied to classes that meet certain criteria.

//

// Using on with Mixins
// Let’s say we have a base class Animal, and we want to create a mixin Flyer that can only be used by classes that extend Animal.
// The Flyer mixin will add flying behavior to specific animals.

void main() {
  Bird bird = Bird("Sparrow");
  bird.makeSound(); // Output: Sparrow makes a sound.
  bird.fly(); // Output: Sparrow is flying!
}

class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("$name makes a sound.");
  }
}

mixin Flyer on Animal {
  void fly() {
    print("$name is flying!");
  }
}

class Bird extends Animal with Flyer {
  Bird(super.name);
}

// Why Use on with Mixins?
// Restrict Usage:
//
// The on keyword ensures that the mixin is only applied to classes that extend or implement a specific superclass. This prevents misuse of the mixin.
//
// Access Superclass Members:
//
// The mixin can access properties and methods of the superclass (e.g., name from Animal).
//
// Enforce Consistency:
//
// By restricting the mixin to specific classes, you ensure that the mixin’s behavior is only applied where it makes sense.

// Key Takeaways:
// The on keyword restricts a mixin to only be used by classes that extend or implement a specific superclass.
//
// This ensures that the mixin is only applied where it makes sense and can safely access superclass members.
//
// Mixins with on are useful for adding behavior to specific parts of your class hierarchy.
