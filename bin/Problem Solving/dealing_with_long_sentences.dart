// Write a program that asks the user for a long string containing multiple words.
// Print back to the user the same string, except with the words in backwards order.
// For example, say I type the string:
// for_example
// My name is Mohamed
// Then I would see the string:
// Mohamed is name My

import 'dart:io';

void main() {
  print("enter your words : ");
  String input = stdin.readLineSync()!;
  print(input.split(" ").reversed.join(" "));
}
