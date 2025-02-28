// Create a class called House with three properties: id, name, and price.
// The class has a constructor that takes these three parameters (named parameters) and initializes the properties.
//
// In the main() function, make a list of House objects, and add three House objects to the list.
//
// Then use for-in loop to iterate through the list of House objects, and print the details (ID, name, and price).

class House {
  int id;
  String name;
  double price;

  House({required this.id, required this.name, required this.price});
}

void main() {
  List<House> houses = [
    House(id: 1, name: 'House A', price: 20000),
    House(id: 2, name: 'House B', price: 40000),
    House(id: 3, name: 'House C', price: 60000),
  ];

  for (House house in houses) {
    print('ID: ${house.id}, Name: ${house.name}, Price: \$${house.price}');
  }
}
