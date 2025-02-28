// write a program that Checks whether a character
// is a vowel or consonant [ using switch or if else if ]

import 'dart:io';

void main() {
  print("Enter your character :");
  String char = stdin.readLineSync()!;

  switch (char) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print('$char is a vowel.');
      break;
    default:
      print('$char is a consonant.');
  }

  print("-------------------------------");

  if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print('$char is a vowel.');
  } else {
    print('$char is a constant.');
  }
}
