void main() {
  // Example doubles
  double number1 = 42.5;
  double number2 = -7.3;
  double number3 = 10.0;

  // 1. abs: Returns the absolute value of the double
  print("Absolute value of $number2: ${number2.abs()}");
  // 2. toString: Converts the double to a string
  print("$number1 as a string: ${number1.toString()}");
  // 3. toStringAsFixed: Converts the double to a string with fixed decimal places
  print("$number1 with 2 decimal places: ${number1.toStringAsFixed(2)}");
  // 4. toStringAsExponential: Converts the double to a string in exponential notation
  print(
      "$number1 in exponential notation: ${number1.toStringAsExponential(2)}");
  // 5. toStringAsPrecision: Converts the double to a string with a given precision
  print("$number1 with precision 4: ${number1.toStringAsPrecision(4)}");
  // 6. round: Rounds the double to the nearest integer
  print("Round $number1: ${number1.round()}");
  // 7. floor: Rounds the double down to the nearest integer
  print("Floor $number1: ${number1.floor()}");
  // 8. ceil: Rounds the double up to the nearest integer
  print("Ceil $number1: ${number1.ceil()}");
  // 9. truncate: Truncates the double to an integer
  print("Truncate $number1: ${number1.truncate()}");
  // 10. compareTo: Compares two doubles
  print("Compare $number1 and $number3: ${number1.compareTo(number3)}");
  // 11. isNegative: Checks if the double is negative
  print("Is $number2 negative? ${number2.isNegative}");
  // 12. isInfinite: Checks if the double is infinite
  print("Is $number1 infinite? ${number1.isInfinite}");
  // 13. isFinite: Checks if the double is finite
  print("Is $number1 finite? ${number1.isFinite}");
  // 14. isNaN: Checks if the double is NaN (Not a Number)
  print("Is $number1 NaN? ${number1.isNaN}");
  // 15. sign: Returns the sign of the double (-1.0, 0.0, or 1.0)
  print("Sign of $number2: ${number2.sign}");
  // 16. clamp: Clamps the double to a given range
  print("Clamp $number1 between 10.0 and 20.0: ${number1.clamp(10.0, 20.0)}");
  // 17. toInt: Converts the double to an integer
  print("$number1 as an integer: ${number1.toInt()}");
  // 18. remainder: Returns the remainder of the division by another double
  print("Remainder of $number1 divided by 3: ${number1.remainder(3)}");
  // 19. roundToDouble: Rounds the double to the nearest double value
  print("Round $number1 to double: ${number1.roundToDouble()}");
  // 20. floorToDouble: Rounds the double down to the nearest double value
  print("Floor $number1 to double: ${number1.floorToDouble()}");
  // 21. ceilToDouble: Rounds the double up to the nearest double value
  print("Ceil $number1 to double: ${number1.ceilToDouble()}");
  // 22. truncateToDouble: Truncates the double to a double value
  print("Truncate $number1 to double: ${number1.truncateToDouble()}");
}
