import 'package:productivity_app/task.dart';

// task_manager.dart
class TaskManager {
  static final TaskManager _instance = TaskManager._internal();
  factory TaskManager() => _instance;
  TaskManager._internal();

  // Map to store tasks
  final Map<DateTime, List<Task>> tasks = {};

  // Method to add tasks
  void addTask(DateTime date, Task task) {
    if (tasks.containsKey(date)) {
      tasks[date]!.add(task);
    } else {
      tasks[date] = [task];
    }
  }
}
