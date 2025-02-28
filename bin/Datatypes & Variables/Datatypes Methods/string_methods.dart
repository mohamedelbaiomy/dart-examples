void main() {
  String name = "Mohamed Elbaiomy";

  // 1. length: Returns the length of the string
  print("The length of the name is: ${name.length}");
  // 2. isEmpty: Checks if the string is empty , isNotEmpty: Checks if the string is not empty
  print(
      "The name is empty ? : ${name.isEmpty} & is not empty ? : ${name.isNotEmpty}");
  print("The first character of the name is: ${name[0]}");
  // 3. toUpperCase: Converts the string to uppercase
  print("The name in uppercase is: ${name.toUpperCase()}");
  // 4. toLowerCase: Converts the string to lowercase
  print("The name in lowercase is: ${name.toLowerCase()}");
  // 5. startsWith: Checks if the string starts with a substring
  print("The name starts with Ahmed : ${name.startsWith('Ahmed')}");
  // 6. endsWith: Checks if the string ends with a substring
  print("The name starts with Ahmed : ${name.endsWith('Ahmed')}");
  // 7. contains: Checks if the string contains a substring
  print("The name contains (s) ? : ${name.contains('s')}");
  // 8. indexOf: Returns the index of the first occurrence of a substring
  print("The index of letter h in name : ${name.indexOf('h')}");
  // 9. lastIndexOf: Returns the index of the last occurrence of a substring
  print("The last index of h in name : ${name.lastIndexOf('h')}");
  // 10. trim: Removes leading and trailing whitespace
  print("The name without spaces before and after ${name.trim()}");
  // 11. substring: Extracts a portion of the string
  print("The name from index to index ${name.substring(0)}");
  print("The name from index to index ${name.substring(0, 7)}");
  // 12. split: Splits the string into a list of substrings based on a delimiter
  print(
      "The first name : ${name.split(' ')[0]} , The last name : ${name.split(' ')[1]}");
  // 13. replaceAll: Replaces all occurrences of a substring with another
  print(
      "The name after replacement : ${name.replaceAll('Elbaiomy', 'Elsayed')}");
  // 14. replaceFirst: Replaces the first occurrence of a substring
  print("Replace first 'l' with 'L': ${name.replaceFirst('l', 'L')}");
  // 15. replaceRange: Replaces a range of characters with a substring
  print(
      "Replace range 7-12 with 'Mostafa': ${name.replaceRange(7, 12, 'Mostafa')}");
  // 16. allMatches: Finds all matches of a pattern in the string
  print("All matches of 'h': ${name.allMatches('h').length}");
  // 17. splitMapJoin: Splits the string, maps the parts, and joins them
  print(
      "Split, map, and join: ${name.splitMapJoin(' ', onMatch: (m) => '*', onNonMatch: (n) => n.toUpperCase())}");
  // 18. padLeft: Pads the string on the left with a specified character
  print("Pad left with '*': ${name.padLeft(30, '*')}");
  // 19. padRight: Pads the string on the right with a specified character
  print("Pad right with '*': ${name.padRight(30, '*')}");
  // 20. compareTo: Compares two strings lexicographically
  String anotherName = "Ahmed Elsayed";
  print("Compare to 'Ahmed Elsayed': ${name.compareTo(anotherName)}");
  // 21. codeUnitAt: Returns the UTF-16 code unit at a specific index
  print("Code unit at index 1: ${name.codeUnitAt(1)}");
  // 22. runes: Returns an iterable of Unicode code points
  print("Runes (Unicode code points): ${name.runes.toList()}");
}
