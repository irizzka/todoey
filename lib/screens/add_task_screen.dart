import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/provider/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  String fromTextField;
  AddTaskScreen({this.fromTextField});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task', style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 28.0,
                fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.center,),

              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value){
                  fromTextField = value;
                },
              ),
              FlatButton(child: Text('Add',
              style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
              onPressed: (){
              //  callback(fromTextField);
              //  final task = Task(name: fromTextField);
                Provider.of<Data>(context).addTaskToList(fromTextField);
                Navigator.pop(context);
              },
              ),
            ],
          ),
        ),
    );
  }
}
