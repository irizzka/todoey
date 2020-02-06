import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class Data extends ChangeNotifier {
  final List<Task> _tasks = [
  Task(name: 'buy r6'),
  Task(name: 'dwar'),
  Task(name: 'rr'),
  ];


  void addTaskToList(String title){
    _tasks.add(Task(name: title));
    notifyListeners();
  }


  void deleteCurrentFromList(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleDone(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  int getListLength(){
    return _tasks.length;
  }

  Task getElement(int index){
    return _tasks[index];
  }
}