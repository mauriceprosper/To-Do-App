import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

   List toDoList = [];

  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ["Make A To Do App", false],
      ["Push to Github", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }

}