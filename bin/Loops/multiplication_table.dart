void main() {
  // Write a dart program to generate multiplication tables of 5

  int number = 5;
  print('Multiplication Table of $number:');

  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print('$number x $i = $result');
  }

  // Write a dart program to generate multiplication tables of 1-12
  for (int number = 1; number <= 12; number++) {
    print('Multiplication Table of $number:');

    for (int i = 1; i <= 12; i++) {
      int result = number * i;
      print('$number x $i = $result');
    }

    print(''); // Print an empty line for better readability
  }
}
