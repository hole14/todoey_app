import 'package:flutter/material.dart';

class TaksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function (bool? value) checkboxCallback;
  final Function () longPressCallback;

  TaksTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
        decorationThickness: 2.0,
        decorationColor: Colors.black54,
      ),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}


