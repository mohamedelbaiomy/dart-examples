// Make a class called Shape that has attributes : ( width, height ) and method called ( area ) , and then make another 2 classes called
// ( Rectangle, Square ) that extends the class Shape . each of them has an attribute called ( color ).
//
// In the main function : make an object of ( Rectangle , Square ) and assign them any values and print them.

// Inheritance allows a class to inherit properties and methods from another class. Dart supports single, multilevel, and hierarchical inheritance.

class Shape {
  double width;
  double height;

  Shape({required this.width, required this.height});

  double area() => width * height;
}

class Rectangle extends Shape {
  String color;

  Rectangle({required this.color, required super.width, required super.height});
}

class Square extends Shape {
  String color;

  Square({required this.color, required super.height, required super.width});
}

void main() {
  Rectangle rect = Rectangle(color: 'red', width: 5, height: 10);
  print(
      'Rectangle: width = ${rect.width}, height = ${rect.height}, color = ${rect.color}, area = ${rect.area()}');

  Square sq = Square(color: 'blue', width: 10, height: 10);
  print(
      'Square: width = ${sq.width}, height = ${sq.height}, color = ${sq.color}, area = ${sq.area()}');
}
