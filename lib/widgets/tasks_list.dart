import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            longPressCallback: () => taskData.deleteCurrentFromList(index),
            taskTitle: taskData.getElement(index).name,
            isChecked: taskData.getElement(index).isDone,
            checkboxCallback: (bool newValue) => taskData.toggleDone(index),
          );
        },
        itemCount: taskData.getListLength(),
      );
    });
  }
}
