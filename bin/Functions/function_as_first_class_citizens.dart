// Functions can be assigned to variables, passed as arguments, and returned from other functions.

void main() {
  // Assigning a function to a variable
  var greet = (String name) => print("Hello, $name!");
  greet("Alice"); // Output: Hello, Alice!

  // Passing a function as an argument
  void executeFunction(Function function) {
    function();
  }

  executeFunction(
      () => print("Function executed!")); // Output: Function executed!

  // Returning a function from another function
  Function createGreeter(String greeting) {
    return (String name) => print("$greeting, $name!");
  }

  var hiGreeter = createGreeter("Hi");
  hiGreeter("Bob"); // Output: Hi, Bob!
}
