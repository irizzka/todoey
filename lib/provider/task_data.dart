import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class Data extends ChangeNotifier {
  final List<Task> tasks = [
  Task(name: 'buy r6'),
  Task(name: 'dwar'),
  Task(name: 'rr'),
  ];


  void addTaskToList(String title){
    tasks.add(Task(name: title));
    notifyListeners();
  }


  void deleteCurrentFromList(String name) {
    tasks.remove(Task(name: name));
    notifyListeners();
  }

  void toggleDone(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  int getListLength(){
    return tasks.length;
  }
}