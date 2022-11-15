import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final double weight;
  final double height;

  CalculatorBrain({
    this.height,
    this.weight,
  });

  double _bmi;
  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return "Please Eat Less";
    } else if (_bmi >= 18.5) {
      return "Good Diet";
    } else {
      return "Please Eat More";
    }
  }
}
