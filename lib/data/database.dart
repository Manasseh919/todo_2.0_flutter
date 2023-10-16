import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
//defaukt

  List todoList = [];

  //reference the box

  final _myBox = Hive.box("mybox");

//first time openeing this app
  void createInitialData() {
    todoList = [
      ["Make Food", false],
      ["Go to School", false],
    ];
  }

  //load the data from databse
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  //update the databse data

  void updateDataBase() {
    _myBox.put("TODOLIST", todoList);
  }
}
