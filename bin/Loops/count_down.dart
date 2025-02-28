// Create a program that counts down from a given number to zero.
//
// * User Input: The program should prompt the user to enter a positive integer.
// * Countdown: Using a loop, count down from that number to zero.
// * Output: Print each number in the countdown.
//
// Make sure to handle invalid input (non-positive integers).

import 'dart:io';

void main() {
  print('Enter a positive integer: ');
  int? number = int.parse(stdin.readLineSync()!);

  if (number <= 0) {
    print('Please enter a valid positive integer.');
    return;
  }

  for (int i = number; i >= 0; i--) {
    print(i);
  }
}
