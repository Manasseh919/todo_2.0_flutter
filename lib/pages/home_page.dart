import 'package:flutter/material.dart';
import 'package:todo_two/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of todo task
  List todoList = [
    ["Make Tutorial", false],
    ["Do exercice", false],
  ];

  //checkbox tapped
  void checkBoxChanged(bool? value, int index){
    setState(() {
      todoList[index][1]=!todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('To Do'),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index)  {
          return ToDoTile(
            taskName: todoList[index][0],
            taskCompleted: todoList[index][1],
            onChanged: (value)=>checkBoxChanged(value,index),
          );
        },
      ),
    );
  }
}
