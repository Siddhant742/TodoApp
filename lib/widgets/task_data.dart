import 'package:flutter/foundation.dart';
import 'package:todoapp/widgets/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [Task(name: "Buy Egg")];
  int get taskCount{
    return tasks.length;
  }
  updateTask(Task task){
    task.toggleisDone();
    notifyListeners();
  }
}
