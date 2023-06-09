import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallBack;
  final Function() gestureCallBack;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallBack,
      required this.gestureCallBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: gestureCallBack,
      child: CheckboxListTile(
        value: isChecked,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        onChanged: checkboxCallBack,
      ),
    );
  }
}
