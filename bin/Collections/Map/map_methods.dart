void main() {
  // Example map
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };

  // 1. addAll: Adds all key-value pairs from another map
  ages.addAll({'David': 40, 'Eve': 45});
  print("After adding David and Eve: $ages");
  // 2. putIfAbsent: Adds a key-value pair if the key is not present
  ages.putIfAbsent('Alice', () => 50);
  print("After putIfAbsent Alice: $ages");
  // 3. remove: Removes a key-value pair by key
  ages.remove('Bob');
  print("After removing Bob: $ages");
  // 4. removeWhere: Removes key-value pairs that satisfy a condition
  ages.removeWhere((key, value) => value < 30);
  print("After removing ages less than 30: $ages");
  // 5. clear: Removes all key-value pairs
  ages.clear();
  print("After clearing the map: $ages");
  // 6. containsKey: Checks if the map contains a key
  ages = {'Alice': 25, 'Bob': 30};
  print("Does the map contain 'Alice'? ${ages.containsKey('Alice')}");
  // 7. containsValue: Checks if the map contains a value
  print("Does the map contain 30? ${ages.containsValue(30)}");
  // 8. forEach: Applies a function to each key-value pair
  print("Iterating through the map:");
  ages.forEach((key, value) => print("$key: $value"));
  // 9. map: Transforms each key-value pair
  Map<String, String> agesAsStrings =
      ages.map((key, value) => MapEntry(key, "$value years old"));
  print("Ages as strings: $agesAsStrings");
  // 10. update: Updates the value for a key
  ages.update('Alice', (value) => value + 1);
  print("After updating Alice's age: $ages");
  // 11. updateAll: Updates all values in the map
  ages.updateAll((key, value) => value + 5);
  print("After updating all ages: $ages");
  // 12. keys: Returns an iterable of all keys
  print("Keys in the map: ${ages.keys}");
  // 13. values: Returns an iterable of all values
  print("Values in the map: ${ages.values}");
  // 14. entries: Returns an iterable of all key-value pairs
  print("Entries in the map: ${ages.entries}");
  // 15. length: Returns the number of key-value pairs
  print("Length of the map: ${ages.length}");
  // 16. isEmpty: Checks if the map is empty
  print("Is the map empty? ${ages.isEmpty}");
  // 17. isNotEmpty: Checks if the map is not empty
  print("Is the map not empty? ${ages.isNotEmpty}");
}
