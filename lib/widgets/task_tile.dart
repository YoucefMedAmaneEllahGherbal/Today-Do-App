import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;
  final void Function() listTileDelete;

  TaskTile({required this.taskTitle ,required this.isChecked , required this.checkBoxChange,required this.listTileDelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        
        onChanged: checkBoxChange,
        activeColor: Colors.teal[400],
      ),
      onLongPress: listTileDelete,
    );
  }
}


