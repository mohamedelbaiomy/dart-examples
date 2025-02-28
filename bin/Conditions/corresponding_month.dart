// Write a program that takes a number representing a month (1-12)
// and prints the corresponding month name.
//
// * For example, if the user enters 3, the program should output "March".
//
// * If the user enters 12, the program should output "December".

import 'dart:io';

void main() {
  print("enter the number :");
  int monthNumber = int.parse(stdin.readLineSync()!);

  switch (monthNumber) {
    case 1:
      print("January");
    case 2:
      print("February");
    case 3:
      print("March");
    case 4:
      print("April");
    case 5:
      print("May");
    case 6:
      print("June");
    case 7:
      print("July");
    case 8:
      print("August");
    case 9:
      print("September");
    case 10:
      print("October");
    case 11:
      print("November");
    case 12:
      print("December");
    default:
      print("Invalid month number");
  }
}
