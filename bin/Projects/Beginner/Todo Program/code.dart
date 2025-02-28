import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('--- To-Do Application ---');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');
    print('Enter your choice: ');

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('Enter the task: ');
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print('Task added successfully!');
      case '2':
        if (tasks.isEmpty) {
          print('No tasks to remove.');
        } else {
          print('Enter the task number to remove: ');
          int taskNumber = int.parse(stdin.readLineSync()!);

          if (taskNumber >= 1 && taskNumber <= tasks.length) {
            String removedTask = tasks.removeAt(taskNumber - 1);
            print('Task "$removedTask" removed successfully!');
          } else {
            print('Invalid task number.');
          }
        }
      case '3':
        if (tasks.isEmpty) {
          print('No tasks to display.');
        } else {
          print('--- Tasks ---');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
      case '4':
        print('Exiting the application...');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
