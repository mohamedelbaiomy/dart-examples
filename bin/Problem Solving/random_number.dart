import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int choice = random.nextInt(100);
  int user = int.parse(stdin.readLineSync()!);
  if (user > 100) {
    print("number out of range");
  } else if (user > choice) {
    print("random number is $choice");
    print("number is too high");
  } else if (user < choice) {
    print("random number is $choice");
    print("number is too low");
  } else {
    print("random number is $choice");
    print("exactly right");
  }
}
