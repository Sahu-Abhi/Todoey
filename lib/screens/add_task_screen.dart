import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Color(0xFF757575),
        child: Container(
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Consumer<TaskData>(
            builder: (context, taskData, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Add Task',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
                  ),
                  TextField(
                    controller: taskController,
                    textAlign: TextAlign.center,
                    autofocus: true,
                    cursorColor: Colors.lightBlueAccent,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      taskData.addToTaskList(Task(name: taskController.text));
                      Navigator.pop(context);
                    },
                    child: Text('ADD'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Colors.lightBlueAccent)),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
