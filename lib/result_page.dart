import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';

import 'buttom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key key,
      @required this.bmiValue,
      @required this.bmiResult,
      @required this.bmiAdvise})
      : super(key: key);
  final String bmiValue;
  final String bmiResult;
  final String bmiAdvise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                color: KinActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style: KTitleStyle,
                    ),
                    Text(
                      bmiValue,
                      textAlign: TextAlign.center,
                      style: KBmiStyle,
                    ),
                    Text(
                      bmiAdvise,
                      textAlign: TextAlign.center,
                      style: KAdviseStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: ButtonButton(
            onClickTitle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ))
        ],
      ),
    );
  }
}
