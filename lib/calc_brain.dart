import 'dart:math';
import 'package:flutter/material.dart';

class calc_brain
{
  calc_brain({required this.height, required this.weight,required this.bmi});
  final double height;
  final int weight;
  double bmi;

  String calculateBMI()
  {
    bmi= weight/ pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    if(bmi>=25)
      {
        return 'Overweight';
      }
    else if(bmi >18.5)
      {
        return 'Normal';
      }
    else
      return 'Underweight';
  }
  String interpret(){
    if(bmi>=25)
      return 'You have a higher than normal body weight.';
    else if (bmi>=18.5)
      return 'You have a normal body weight';
    else
      return 'you are underweight';
  }
}