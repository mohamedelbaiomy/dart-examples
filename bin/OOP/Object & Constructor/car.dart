// Make a class called Car with attributes : name, model, color
// initialize them using constructor with named parameters
// make a method called display that print them

class Car {
  String name;
  String model;
  String color;

  Car({required this.name, required this.model, required this.color});

  void display() {
    print("Car name is $name");
    print("Car model is $model");
    print("Car color is $color");
  }
}

void main() {
  Car c1 = Car(name: 'Kia', model: 'Cerato', color: 'Black');
  c1.display();

  print('-------------------');

  Car c2 = Car(name: 'Hundai', model: 'Elantra', color: 'White');
  c2.display();
}
