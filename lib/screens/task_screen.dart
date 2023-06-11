import 'package:flutter/material.dart';
import 'package:todoapp/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import '../widgets/task.dart';
import '../widgets/taskList.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [Task(name: "Buy Egg")];

  @override
  Widget build(BuildContext context) {
    return Provider<List<Task>>(
      create: (BuildContext context) { return tasks; },
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddTask((newTask) {
                  setState(() {
                    tasks.add(Task(name: newTask));
                  });
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
                      '12 Tasks',
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
                  child: TaskList(tasks),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
