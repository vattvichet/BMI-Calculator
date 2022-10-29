import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'genderCard.dart';

const inActiveCardColor = Colors.grey;
const activeCardColor = Colors.green;
const cardColor = Color.fromARGB(255, 79, 62, 62);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inActiveCardColor) {
  //       maleCardColor = activeCardColor;
  //     } else {
  //       maleCardColor = inActiveCardColor;
  //     }
  //   }
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inActiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //     } else {
  //       femaleCardColor = inActiveCardColor;
  //     }
  //   }
  // }

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
                    child: ReusableCard(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inActiveCardColor,
                  cardChild: GenderCard(
                    gender: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        color: selectedGender == Gender.female
                            ? activeCardColor
                            : inActiveCardColor,
                        cardChild: GenderCard(
                          gender: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        ))),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            onPressed: () {},
            color: cardColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPressed: () {},
                  color: cardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  onPressed: () {},
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
