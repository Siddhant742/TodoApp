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
            return TaskTile(taskData.tasks[index].name,
                taskData.tasks[index].isDone,
                    (checkboxState) {
                  // setState(() {
                  //   widget.tasks[index].toggleisDone();
                  // });
                });
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
