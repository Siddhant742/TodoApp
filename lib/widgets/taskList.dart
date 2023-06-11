import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task.dart';
import 'package:todoapp/widgets/taskTile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(widget.tasks[index].name,  widget.tasks[index].isDone, (checkboxState){
          setState(() {
            widget.tasks[index].toggleisDone();
          });
        } );
      },
      itemCount: widget.tasks.length,
    );
  }
}