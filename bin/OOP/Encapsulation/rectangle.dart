// Create a class named Rectangle with properties for _width
// and _height. Add getters named width and height. Add
// setters for these properties that ensure you can’t give
// negative values. Add a getter for a calculated property
// named area that returns the area of the rectangle.

class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  double get width => _width;

  set width(double value) {
    if (value >= 0) {
      _width = value;
    } else {
      print("Error: Width cannot be negative.");
    }
  }

  double get height => _height;

  set height(double value) {
    if (value >= 0) {
      _height = value;
    } else {
      print("Error: Height cannot be negative.");
    }
  }

  double get area => _width * _height;
}

void main() {
  Rectangle rectangle = Rectangle(10, 5);

  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  print("Area: ${rectangle.area}");

  rectangle.width = -5;
  rectangle.height = -3;

  rectangle.width = 7;
  rectangle.height = 8;

  print("Updated Width: ${rectangle.width}");
  print("Updated Height: ${rectangle.height}");
  print("Updated Area: ${rectangle.area}");
}
