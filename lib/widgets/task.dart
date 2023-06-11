import 'package:flutter/material.dart';

class Task  {
 late String name;
 late bool isDone = false ;

 Task({required this.name});
 toggleisDone (){
   isDone = !isDone;
 }
}
