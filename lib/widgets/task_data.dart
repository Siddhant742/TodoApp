import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [Task(name: "Buy Egg")];
}