import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task.dart';
import 'package:todoapp/widgets/taskTile.dart';
import 'package:todoapp/widgets/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(Provider.of<TaskData>(context).tasks[index].name,
            Provider.of<TaskData>(context).tasks[index].isDone,
            (checkboxState) {
          // setState(() {
          //   widget.tasks[index].toggleisDone();
          // });
        });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
