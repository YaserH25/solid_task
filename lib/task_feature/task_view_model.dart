import 'package:flutter/material.dart';
import 'package:solid_task/task_feature/task_model.dart';

///this is my view model, which interact between my view and my model
///using singleton to avoid unnecessary creating more instances
class TaskViewModel  {
  static final TaskViewModel _taskViewModel=TaskViewModel._();
   late TaskModel _taskModel;

  /// a getter to access my ValueNotifier from my model
  ValueNotifier<Color> get valueNotifier{
    return _taskModel.color;
  }

   ///injecting my model to my view model
   factory TaskViewModel({required TaskModel model}){
     _taskViewModel._taskModel =model;

     return _taskViewModel;
   }

   TaskViewModel._();

  /// it triggers changeColor method in my model
   void changeColor(){
     _taskModel.changeColor();
   }


}