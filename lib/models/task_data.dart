import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Welcome to Today Do App")
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTast(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
