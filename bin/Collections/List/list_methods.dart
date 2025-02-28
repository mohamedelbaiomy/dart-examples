void main() {
  // Example list
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> moreNumbers = [6, 7, 8];

  // 1. add: Adds an element to the end of the list
  numbers.add(6);
  print("After adding 6: $numbers");
  // 2. addAll: Adds all elements from another list to the end of the list
  numbers.addAll(moreNumbers);
  print("After adding moreNumbers: $numbers");
  // 3. insert: Inserts an element at a specific index
  numbers.insert(0, 0);
  print("After inserting 0 at index 0: $numbers");
  // 4. insertAll: Inserts all elements from another list at a specific index
  numbers.insertAll(3, [10, 11]);
  print("After inserting [10, 11] at index 3: $numbers");
  // 5. remove: Removes the first occurrence of an element
  numbers.remove(10);
  print("After removing 10: $numbers");
  // 6. removeAt: Removes an element at a specific index
  numbers.removeAt(0);
  print("After removing element at index 0: $numbers");
  // 7. removeLast: Removes and returns the last element
  int lastElement = numbers.removeLast();
  print("After removing last element ($lastElement): $numbers");
  // 8. removeRange: Removes elements within a range
  numbers.removeRange(1, 3);
  print("After removing elements from index 1 to 3: $numbers");
  // 9. removeWhere: Removes elements that satisfy a condition
  numbers.removeWhere((element) => element % 2 == 0);
  print("After removing even numbers: $numbers");
  // 10. retainWhere: Retains elements that satisfy a condition
  numbers.retainWhere((element) => element > 3);
  print("After retaining elements greater than 3: $numbers");
  // 11. clear: Removes all elements from the list
  numbers.clear();
  print("After clearing the list: $numbers");
  // 12. indexOf: Returns the index of the first occurrence of an element
  numbers = [1, 2, 3, 4, 5];
  print("Index of 3: ${numbers.indexOf(3)}");
  // 13. lastIndexOf: Returns the index of the last occurrence of an element
  numbers = [1, 2, 3, 2, 1];
  print("Last index of 2: ${numbers.lastIndexOf(2)}");
  // 14. contains: Checks if the list contains an element
  print("Does the list contain 5? ${numbers.contains(5)}");
  // 15. forEach: Applies a function to each element
  print("Iterating through the list:");
  numbers.forEach((element) => print(element));
  // 16. map: Transforms each element in the list
  List<int> doubledNumbers = numbers.map((element) => element * 2).toList();
  print("Doubled numbers: $doubledNumbers");
  // 17. where: Filters elements based on a condition
  List<int> evenNumbers = numbers.where((element) => element % 2 == 0).toList();
  print("Even numbers: $evenNumbers");
  // 18. reduce: Reduces the list to a single value using a function
  int sum = numbers.reduce((value, element) => value + element);
  print("Sum of all elements: $sum");
  // 19. fold: Reduces the list to a single value with an initial value
  int product = numbers.fold(1, (value, element) => value * element);
  print("Product of all elements: $product");
  // 20. sort: Sorts the list
  numbers.sort();
  print("Sorted list: $numbers");
  // 21. shuffle: Shuffles the list randomly
  numbers.shuffle();
  print("Shuffled list: $numbers");
  // 22. sublist: Returns a sublist within a range
  List<int> sublist = numbers.sublist(1, 3);
  print("Sublist from index 1 to 3: $sublist");
  // 23. asMap: Converts the list to a map with indices as keys
  Map<int, int> listAsMap = numbers.asMap();
  print("List as map: $listAsMap");
  // 24. join: Joins elements into a string
  String joinedNumbers = numbers.join(", ");
  print("Joined numbers: $joinedNumbers");
  // 25. length: Returns the number of elements in the list
  print("Length of the list: ${numbers.length}");
  // 26. isEmpty: Checks if the list is empty
  print("Is the list empty? ${numbers.isEmpty}");
  // 27. isNotEmpty: Checks if the list is not empty
  print("Is the list not empty? ${numbers.isNotEmpty}");
}
