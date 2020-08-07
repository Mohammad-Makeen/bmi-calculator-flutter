import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height, weight;
  double _bmi;
  CalculatorBrain({@required this.weight, @required this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return "Overweight";
    else if (_bmi > 18.5)
      return "Normal";
    else
      return 'Underweight';
  }

  String getFeedBack() {
    if (_bmi >= 25)
      return "You have a hight than normal body weight. Try to exercise more";
    else if (_bmi > 18.5)
      return "You have a normal body weight. Good job!";
    else
      return "You have a lower body weight. you need to nurture your body more!";
  }
}
