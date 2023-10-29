import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["This is what", false],
      ["Your tasks will look like", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}