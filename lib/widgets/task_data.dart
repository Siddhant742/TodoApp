import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoapp/widgets/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [Task(name: "Buy Egg"),
    Task(name: "Buy Bread")];
  int get taskCount{
    return _tasks.length;
  }
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
}
  updateTask(Task task){
    task.toggleisDone();
    notifyListeners();
  }
  addTask( String taskTitle){
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
