import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  List<Task> tasks;

  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  /*List<Task> tasks = [
    Task(name: 'buy r6'),
    Task(name: 'dwar'),
    Task(name: 'rr'),
  ];*/


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (bool newValue) {
          setState(() => widget.tasks[index].toggleDone());
        },

      );
    },
    itemCount: widget.tasks.length,);
  }
}
