import 'dart:io';

void main() {
  int number, flag = 0;

  print("please add your number");
  number = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      flag++;
    }
  }
  if (flag == 2) {
    print("number is prime");
  } else {
    print("number is not prime");
  }
}
