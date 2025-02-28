void main() {
  // Higher-order function that takes a function as a parameter
  void operateOnNumbers(int a, int b, int Function(int, int) operation) {
    var result = operation(a, b);
    print("Result: $result");
  }

  // Using the higher-order function
  operateOnNumbers(4, 2, (a, b) => a + b); // Output: Result: 6
  operateOnNumbers(4, 2, (a, b) => a * b); // Output: Result: 8
}
