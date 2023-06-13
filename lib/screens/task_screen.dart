import 'package:flutter/material.dart';
import 'package:todoapp/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task_data.dart';
import '../widgets/taskList.dart';


class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTask((newTask) {
                // setState(() {
                //   // Provider.of<List<Task>>(context).add(Task(name: newTask));
                // });
                Navigator.pop(context);
              }),
            );

        },
        backgroundColor: Colors.greenAccent,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.greenAccent,
                      size: 33,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
