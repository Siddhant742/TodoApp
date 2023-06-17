import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TaskTile extends StatelessWidget {
  late String taskTitle;
  late bool isChecked ;
  final Function CheckboxCallback;
  TaskTile(this.taskTitle, this.isChecked, this.CheckboxCallback);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
      style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: null ),),
      trailing: Checkbox(value: isChecked ,
        onChanged: (newCheckedValue){
        CheckboxCallback(newCheckedValue);
        }
      ),
    );
  }
}

// (bool checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });


