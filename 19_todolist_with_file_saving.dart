import 'dart:io';

class TodoApp {
  final File file = File('tasks.txt');

  // Load tasks from file
  Future<void> loadTasks() async {
    if (await file.exists()) {
      print('Current Tasks:');
      List<String> lines = await file.readAsLines();
      for (var line in lines) {
        print('- $line');
      }
    } else {
      print('No tasks found.');
    }
  }

  // Add a new task
  Future<void> addTask(String task) async {
    await file.writeAsString('$task\n', mode: FileMode.append);
    print('Task "$task" added');
  }

  // Delete all tasks
  Future<void> clearTasks() async {
    await file.writeAsString('');
    print('All tasks cleared');
  }
}

void main() async {
  TodoApp todoApp = TodoApp();

  await todoApp.loadTasks();

  await todoApp.addTask('Buy groceries');
  await todoApp.addTask('Complete Dart tutorial');

  await todoApp.loadTasks();

  await todoApp.clearTasks();
  await todoApp.loadTasks();
}
