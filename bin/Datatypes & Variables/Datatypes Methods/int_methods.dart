void main() {
  // Example integers
  int number1 = 42;
  int number2 = -7;
  int number3 = 10;

  // 1. abs: Returns the absolute value of the integer
  print("Absolute value of $number2: ${number2.abs()}");
  // 2. toString: Converts the integer to a string
  print("$number1 as a string: ${number1.toString()}");
  // 3. toRadixString: Converts the integer to a string in a given radix (base)
  print("$number1 in binary (base 2): ${number1.toRadixString(2)}");
  print("   $number1 in hexadecimal (base 16): ${number1.toRadixString(16)}");
  // 4. compareTo: Compares two integers
  print("Compare $number1 and $number3: ${number1.compareTo(number3)}");
  // 5. isEven: Checks if the integer is even
  print("Is $number1 even? ${number1.isEven}");
  // 6. isOdd: Checks if the integer is odd
  print("Is $number1 odd? ${number1.isOdd}");
  // 7. isNegative: Checks if the integer is negative
  print("Is $number2 negative? ${number2.isNegative}");
  // 8. sign: Returns the sign of the integer (-1, 0, or 1)
  print("Sign of $number2: ${number2.sign}");
  // 9. bitLength: Returns the number of bits required to represent the integer
  print("Bit length of $number1: ${number1.bitLength}");
  // 10. toUnsigned: Converts the integer to an unsigned integer of a given bit length
  print("$number1 as an unsigned 8-bit integer: ${number1.toUnsigned(8)}");
  // 11. toSigned: Converts the integer to a signed integer of a given bit length
  print("$number1 as a signed 8-bit integer: ${number1.toSigned(8)}");
  // 12. gcd: Returns the greatest common divisor of two integers
  print("GCD of $number1 and $number3: ${number1.gcd(number3)}");
  // 13. modInverse: Returns the modular inverse of the integer
  try {
    print("Modular inverse of $number3 modulo 17: ${number3.modInverse(17)}");
  } catch (e) {
    print(
        "Modular inverse of $number3 modulo 17: Not possible (${e.toString()})");
  }
  // 14. modPow: Returns the modular exponentiation of the integer
  print("$number3^3 modulo 17: ${number3.modPow(3, 17)}");
  // 15. clamp: Clamps the integer to a given range
  print("Clamp $number1 between 10 and 20: ${number1.clamp(10, 20)}");
  // 16. round: Returns the integer itself (since it's already an integer)
  print("Round $number1: ${number1.round()}");
  // 17. floor: Returns the integer itself (since it's already an integer)
  print("Floor $number1: ${number1.floor()}");
  // 18. ceil: Returns the integer itself (since it's already an integer)
  print("Ceil $number1: ${number1.ceil()}");
  // 19. truncate: Returns the integer itself (since it's already an integer)
  print("Truncate $number1: ${number1.truncate()}");
  // 20. toDouble: Converts the integer to a double
  print("$number1 as a double: ${number1.toDouble()}");
  // 21. isFinite: Checks if the integer is finite (always true for integers)
  print("Is $number1 finite? ${number1.isFinite}");
  // 22. isInfinite: Checks if the integer is infinite (always false for integers)
  print("Is $number1 infinite? ${number1.isInfinite}");
  // 23. isNaN: Checks if the integer is NaN (always false for integers)
  print("Is $number1 NaN? ${number1.isNaN}");
}
