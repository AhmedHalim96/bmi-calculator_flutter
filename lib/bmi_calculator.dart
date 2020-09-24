import 'dart:math';
import 'package:flutter/material.dart';

class BMICalcualtor {
  BMICalcualtor({this.height, this.weight}) {
    calculateBMI();
    setBMIAttrebutes();
  }

  final int height;
  final int weight;
  double bmi;
  String bodyType;
  String insight;
  Color color;

  void calculateBMI() {
    bmi = weight / pow((height / 100), 2);
    bmi = num.parse(bmi.toStringAsFixed(1));
  }

  void setBMIAttrebutes() {
    if (bmi > 30) {
      bodyType = 'OBESE';
      insight = 'You probalbly eat like a cow.\nGod Bless.';
      color = Colors.red;
    } else if (bmi >= 25) {
      bodyType = 'OVERWEIGHT';
      insight =
          'You have a higher than normal body weight.\nTry to get off your butt and exercise more.';
      color = Colors.orange;
    } else if (bmi >= 18.5) {
      bodyType = 'NORMAL';
      insight = 'Your Weight is within the normal Weight!\nKeep it up!';
      color = Colors.green;
    } else {
      bodyType = 'UNDERWEIGHT';
      insight =
          'You have a lower than normal body weight.\nTry not to starve yourself, Skinnny Bitch!';
      color = Colors.yellow;
    }
  }
}
