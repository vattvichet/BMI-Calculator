import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'genderCard.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const activeCardColor = Color.fromARGB(255, 23, 21, 21);
const cardColor = Color.fromARGB(255, 79, 62, 62);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    print("Pressed");
                  },
                  child: ReusableCard(
                    color: Colors.black,
                    cardChild: GenderCard(
                      gender: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                        color: cardColor,
                        cardChild: GenderCard(
                          gender: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        ))),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            color: cardColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: cardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  color: cardColor,
                )),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
