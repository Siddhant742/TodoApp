import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/screens/task_screen.dart';
import 'package:todoapp/widgets/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){ return TaskData();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: TasksScreen(),
      ),
    );
  }
}
