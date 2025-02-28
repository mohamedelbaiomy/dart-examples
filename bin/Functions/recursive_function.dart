void main() {
  // Recursive function to calculate factorial
  int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  print("Factorial of 5: ${factorial(5)}"); // Output: Factorial of 5: 120
}
