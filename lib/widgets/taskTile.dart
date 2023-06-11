import 'package:flutter/material.dart';
import 'task.dart';

class TaskTile extends StatelessWidget {
  late String taskTitle;
  late bool isChecked ;
  final Function checkboxCallback;
  TaskTile(this.taskTitle, this.isChecked, this.checkboxCallback);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
      style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: null ),),
      trailing: Checkbox(value: isChecked ,
        onChanged:(newValue){
        checkboxCallback(newValue);
        }),
    );
  }
}

// (bool checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });


