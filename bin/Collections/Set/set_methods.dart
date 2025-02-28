void main() {
  // Example sets
  Set<int> numbers = {1, 2, 3, 4, 5};
  Set<int> moreNumbers = {4, 5, 6, 7};

  // 1. add: Adds an element to the set
  numbers.add(6);
  print("After adding 6: $numbers");
  // 2. addAll: Adds all elements from another set
  numbers.addAll(moreNumbers);
  print("After adding moreNumbers: $numbers");
  // 3. remove: Removes an element from the set
  numbers.remove(1);
  print("After removing 1: $numbers");
  // 4. removeWhere: Removes elements that satisfy a condition
  numbers.removeWhere((element) => element % 2 == 0);
  print("After removing even numbers: $numbers");
  // 5. contains: Checks if the set contains an element
  print("Does the set contain 3? ${numbers.contains(3)}");
  // 6. containsAll: Checks if the set contains all elements of another set
  print("Does the set contain all of {3, 5}? ${numbers.containsAll({3, 5})}");
  // 7. intersection: Returns the intersection of two sets
  Set<int> intersection = numbers.intersection(moreNumbers);
  print("Intersection of numbers and moreNumbers: $intersection");
  // 8. union: Returns the union of two sets
  Set<int> union = numbers.union(moreNumbers);
  print("Union of numbers and moreNumbers: $union");
  // 9. difference: Returns the difference between two sets
  Set<int> difference = numbers.difference(moreNumbers);
  print("Difference between numbers and moreNumbers: $difference");
  // 10. lookup: Returns an element equal to the given object, if any
  print("Lookup for 3: ${numbers.lookup(3)}");
  // 11. forEach: Applies a function to each element
  print("Iterating through the set:");
  numbers.forEach((element) => print(element));
  // 12. map: Transforms each element in the set
  Set<int> doubledNumbers = numbers.map((element) => element * 2).toSet();
  print("Doubled numbers: $doubledNumbers");
  // 13. where: Filters elements based on a condition
  Set<int> oddNumbers = numbers.where((element) => element % 2 != 0).toSet();
  print("Odd numbers: $oddNumbers");
  // 14. retainAll: Retains only elements that are in another set
  numbers.retainAll({3, 5});
  print("After retaining {3, 5}: $numbers");
  // 15. retainWhere: Retains elements that satisfy a condition
  numbers.retainWhere((element) => element > 3);
  print("After retaining elements greater than 3: $numbers");
  // 16. clear: Removes all elements from the set
  numbers.clear();
  print("After clearing the set: $numbers");
  // 17. length: Returns the number of elements in the set
  numbers = {1, 2, 3};
  print("Length of the set: ${numbers.length}");
  // 18. isEmpty: Checks if the set is empty
  print("Is the set empty? ${numbers.isEmpty}");
  // 19. isNotEmpty: Checks if the set is not empty
  print("Is the set not empty? ${numbers.isNotEmpty}");
  // 20. toList: Converts the set to a list
  List<int> listFromSet = numbers.toList();
  print("Set as a list: $listFromSet");
}
