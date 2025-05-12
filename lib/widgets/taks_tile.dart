import 'package:flutter/material.dart';

class TaksTile extends StatefulWidget {
  @override
  _TaksTileState createState() => _TaksTileState();
}

class _TaksTileState extends State<TaksTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a taks', style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
        decorationThickness: 2.0,
        decorationColor: Colors.black54,
      ),),
      trailing: TaksCheckBox(checkBoxState: isChecked, toogleCheckBox: (bool? checkBoxState) {
        setState(() {
          isChecked = checkBoxState ?? false;
        });
      }),
    );
  }
}

class TaksCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final ValueChanged<bool?> toogleCheckBox;

  TaksCheckBox({required this.checkBoxState, required this.toogleCheckBox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toogleCheckBox,
    );
  }
}

