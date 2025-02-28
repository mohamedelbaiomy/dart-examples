void main() {
  // Example booleans
  bool isTrue = true;
  bool isFalse = false;

  // 1. toString: Converts the boolean to a string
  print("$isTrue as a string: ${isTrue.toString()}");
  // 2. hashCode: Returns the hash code of the boolean
  print("Hash code of $isTrue: ${isTrue.hashCode}");
  // 3. runtimeType: Returns the runtime type of the boolean
  print("Runtime type of $isTrue: ${isTrue.runtimeType}");
  // 4. & (AND operator): Performs a logical AND operation
  print("$isTrue AND $isFalse: ${isTrue & isFalse}");
  // 5. | (OR operator): Performs a logical OR operation
  print("$isTrue OR $isFalse: ${isTrue | isFalse}");
  // 6. ^ (XOR operator): Performs a logical XOR operation
  print("$isTrue XOR $isFalse: ${isTrue ^ isFalse}");
  // 7. ! (NOT operator): Negates the boolean
  print("NOT $isTrue: ${!isTrue}");
}
