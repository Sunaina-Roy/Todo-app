import 'package:flutter/material.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
//    String addTask;
    return Container(
      color: Color(0XFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: myController,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              padding: EdgeInsets.all(12),
              color: Theme.of(context).primaryColor,
              onPressed: () {
//                print(myController.text);
                Provider.of<TaskData>(context, listen: false)
                    .addTask(myController.text);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
