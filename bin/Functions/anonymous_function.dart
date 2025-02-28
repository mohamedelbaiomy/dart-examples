// void main() {
//   var cube = (int number) {
//     return number * number * number;
//   };
//   print("Cube of 3 is : ${cube(3)}");
// }

void main() {
  var numbers = [1, 2, 3, 4, 5];

  // Using an anonymous function with `forEach`
  numbers.forEach((number) {
    print("Number: $number");
  });

  // Using an anonymous function with `map`
  var doubledNumbers = numbers.map((number) => number * 2).toList();
  print(
      "Doubled numbers: $doubledNumbers"); // Output: Doubled numbers: [2, 4, 6, 8, 10]
}
