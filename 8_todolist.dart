import 'dart:io';

// Function to display the menu
void showMenu() {
  print('1. Add Task');
  print('2. View Tasks');
  print('3. Remove Task');
  print('4. Exit');
}

// Function to add a task
void addTask(List<String> tasks) {
  stdout.write('Enter task: ');
  String task = stdin.readLineSync()!;
  tasks.add(task);
  print('Task added: $task');
}

// Function to display tasks
void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks available.');
  } else {
    print('Your Tasks:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}

// Function to remove a task
void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks to remove.');
    return;
  }
  viewTasks(tasks);
  stdout.write('Enter the task number to remove: ');
  int taskNumber = int.parse(stdin.readLineSync()!);
  if (taskNumber < 1 || taskNumber > tasks.length) {
    print('Invalid task number.');
  } else {
    String removedTask = tasks.removeAt(taskNumber - 1);
    print('Removed task: $removedTask');
  }
}

void main() {
  List<String> tasks = [];
  bool isRunning = true;

  while (isRunning) {
    showMenu();
    stdout.write('Choose an option: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addTask(tasks);
        break;
      case 2:
        viewTasks(tasks);
        break;
      case 3:
        removeTask(tasks);
        break;
      case 4:
        print('Exiting...');
        isRunning = false;
        break;
      default:
        print('Invalid choice, try again.');
    }
  }
}
