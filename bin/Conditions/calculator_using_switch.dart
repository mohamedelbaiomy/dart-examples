// Basic Calculator in Dart
//
// Input: The program will read two integers and an operator from the user.
// Processing: Based on the operator entered, the program will perform the corresponding arithmetic operation.
// Output: It will display the result of the operation. Additionally, it will handle division by zero by displaying an appropriate message.

import 'dart:io';

void main() {
  print("please enter the first number :");
  int num1 = int.parse(stdin.readLineSync()!);

  print("please enter the second number :");
  int num2 = int.parse(stdin.readLineSync()!);

  print("please enter the operator :");
  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      print("The sum of two numbers is ${num1 + num2}");
    case '-':
      print("The subtract of two numbers is ${num1 - num2}");
    case '*':
      print("The multiplication of two numbers is ${num1 * num2}");
    case '/':
      if (num2 == 0) {
        print("you can't divide by zero");
      } else {
        print("The division of two numbers is ${num1 / num2}");
      }
    default:
      print("Invalid operators");
  }
}
