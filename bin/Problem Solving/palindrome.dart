// Ask the user for a string and print out whether this string is a palindrome or not.
// A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  if (isPalindrome(input)) {
    print("'$input' is a palindrome.");
  } else {
    print("'$input' is not a palindrome.");
  }
}

bool isPalindrome(String str) {
  // Remove all non-alphanumeric characters and convert to lowercase
  String cleanedStr = str.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  // Compare the string with its reverse
  return cleanedStr == cleanedStr.split('').reversed.join('');
}

// Another Way

/*
import 'dart:io';

void main() {
  // Ask the user for a string
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  // Check if the string is a palindrome
  if (input == input.split('').reversed.join('')) {
    print("'$input' is a palindrome.");
  } else {
    print("'$input' is not a palindrome.");
  }
}
*/
