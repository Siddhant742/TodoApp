import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/taskTile.dart';
import 'package:todoapp/widgets/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context, taskData, child) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(taskTitle:taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                CheckboxCallback:(checkbox)=>taskData.updateTask(taskData.tasks[index]),
              // LongpressCallback: ()=> taskData.deleteTask(taskData.tasks[index]),
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
