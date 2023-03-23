import 'package:flutter/material.dart';
import 'package:solid_task/task_feature/task_view.dart';

void main(){
  runApp(const App());
}

/// my root widget
class App extends StatelessWidget {

  ///my root widget const constructor
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TaskView(),
    );
  }
}
