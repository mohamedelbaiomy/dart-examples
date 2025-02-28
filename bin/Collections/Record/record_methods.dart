void main() {
  // Example records
  var person = ('Alice', 25); // A record with a String and an int
  var point = (x: 10, y: 20); // A record with named fields

  // 1. Accessing fields by position
  print("Name: ${person.$1}, Age: ${person.$2}");
  // 2. Accessing fields by name (if named)
  print("X: ${point.x}, Y: ${point.y}");
  // 3. Equality: Records are equal if their fields are equal
  var anotherPerson = ('Alice', 25);
  print("Are the records equal? ${person == anotherPerson}");
  // 4. Destructuring: Extracting fields into variables
  var (name, age) = person;
  print("Destructured name: $name, age: $age");

  var (x: x, y: y) = point;
  print("Destructured x: $x, y: $y");
  // 5. Using records in collections
  List<(String, int)> people = [
    ('Alice', 25),
    ('Bob', 30),
    ('Charlie', 35),
  ];
  print("List of records: $people");
  // 6. Iterating through a list of records
  print("Iterating through the list of records:");
  for (var (name, age) in people) {
    print("$name is $age years old");
  }
  // 7. Returning records from functions
  (String, int) createPerson(String name, int age) {
    return (name, age);
  }

  var newPerson = createPerson('David', 40);
  print("New person: $newPerson");
  // 8. Using records as map keys
  Map<(String, int), String> personDescriptions = {
    ('Alice', 25): 'Loves programming',
    ('Bob', 30): 'Enjoys hiking',
  };
  print("Person descriptions: $personDescriptions");
  // 9. Accessing a value using a record key
  print("Alice's description: ${personDescriptions[('Alice', 25)]}");
  // 10. Records with different types
  var mixedRecord = ('Alice', 25, true);
  print("Mixed record: $mixedRecord");
}
