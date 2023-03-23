import 'package:flutter/material.dart';
import 'package:solid_task/task_feature/task_model.dart';
import 'package:solid_task/task_feature/task_view_model.dart';

///this is my task view
class TaskView extends StatelessWidget {
  ///getting an instance of the TaskViewModel
  final TaskViewModel taskViewModel = TaskViewModel(model: TaskModel());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GestureDetector(
        onTap: () {
          taskViewModel.changeColor();
        },
        child: ValueListenableBuilder<Color>(
          valueListenable: taskViewModel.valueNotifier,
          builder:(context, value, child) =>  ColoredBox(
            color: value,
            child:  Center(
              child: Text('Hello there',style: Theme.of(context).textTheme.bodyLarge,),
            ),
          ),
        ),
      ),
    );
  }
}
