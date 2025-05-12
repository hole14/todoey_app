import 'package:flutter/material.dart';
import 'taks_tile.dart';

class TaksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaksTile(),
        TaksTile(),
        TaksTile(),
        TaksTile(),
        TaksTile(),
        TaksTile(),
      ],
    );
  }
}