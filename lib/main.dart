import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/task_screen.dart';

import 'provider/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      child: MaterialApp(
        home: TasksScreen(),
      ), builder: (BuildContext context) => Data(),
    );
  }
}


