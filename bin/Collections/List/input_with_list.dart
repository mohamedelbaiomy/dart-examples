import 'dart:io';

void main() {
  List<String> names = [];

  print('Enter names (type "exit" to finish):');

  while (true) {
    String input = stdin.readLineSync()!;
    if (input.isEmpty || input.toLowerCase() == 'exit') {
      break;
    }
    names.add(input);
  }

  print('You entered the following names:');
  for (var name in names) {
    print(name);
  }
}
