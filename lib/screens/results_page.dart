import '../components/calculate_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmi, this.bodyType, this.insight, this.resultColor});

  final double bmi;
  final String bodyType;
  final String insight;
  final Color resultColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    bodyType,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: resultColor,
                    ),
                  ),
                  Text(
                    bmi.toString(),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 80.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      insight,
                      textAlign: TextAlign.center,
                      style: kCardTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          CalculateButton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
