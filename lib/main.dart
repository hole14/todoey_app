import 'package:flutter/material.dart';
import 'package:todoey_app/screen/taks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaksScreen(),
      ),
    );
  }
}

