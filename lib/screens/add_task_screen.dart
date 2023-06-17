import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task_data.dart';

late String newTasktitle;
class AddTask extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 55),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: Colors.greenAccent,
              ),
            ),
            // SizedBox(height: 60,),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  // focusColor: Colors.greenAccent,
                  ),
              onChanged: (newText){
                newTasktitle = newText;
              },
            ),
            SizedBox(
              height: 80,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTasktitle);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.greenAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
