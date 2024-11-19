import 'package:hive/hive.dart';


class ToDoDatabase{

  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('myBox');

  //run this method if first time ever opening the app
  void createInitialData(){
    toDoList = [
      ["Make tutorial", false],
      ["False Exercise", false],
    ];
  }

//load the data from the database
void loadData(){
  toDoList = _myBox.get("TODOLIST");

}

//update the database
void updateData(){
  _myBox.put("TODOLIST", toDoList);
}

}