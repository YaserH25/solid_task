import 'dart:math';

import 'package:flutter/material.dart';

/// this is my model which contents all the logic.
class TaskModel {


  ///this is used to notify my widget whenever the value changes,
  ///setting white color as my initial color
  ValueNotifier<Color> color = ValueNotifier<Color>(Colors.white);

  ///using it to create random color
  final Random random = Random();


  ///this method for changing the color
  void changeColor(){
    Color randomColor = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    color.value = randomColor;
  }
}