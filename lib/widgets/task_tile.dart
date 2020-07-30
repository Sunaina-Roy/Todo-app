import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longPressCallBack;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallBack,
      this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        activeColor: Theme.of(context).primaryColor,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
