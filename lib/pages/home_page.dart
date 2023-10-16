import 'package:flutter/material.dart';
import 'package:todo_two/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('To Do'),
     
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Manasseh",
              taskCompleted: true,
              onChanged: (p0) => true,
          )
        ],
      ),
    );
  }
}