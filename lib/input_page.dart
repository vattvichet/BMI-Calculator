import 'dart:ui';

import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'genderCard.dart';

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

  double height = 180;
  double weight = 55;
  double age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      ? KActiveCardColor
                      : KinActiveCardColor,
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
                            ? KActiveCardColor
                            : KinActiveCardColor,
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
            color: KCardColor,
            cardChild: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HIGHT", style: KGenderTextStyle),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toStringAsFixed(0),
                        style: KValueTextStyle,
                      ),
                      Text(
                        "cm",
                        style: KValueTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.pink,
                        thumbColor: Color.fromARGB(255, 222, 138, 166),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayColor: Color.fromARGB(100, 222, 138, 166),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                        value: height,
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue;
                          });
                        }),
                  ),
                ],
              ),
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPressed: () {},
                  color: KCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: KGenderTextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        weight.toStringAsFixed(0),
                        style: KValueTextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight -= 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight += 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPressed: () {},
                  color: KCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: KGenderTextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        age.toStringAsFixed(0),
                        style: KValueTextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age -= 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age += 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
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

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {Key key, @required this.icon, @required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      fillColor: Colors.green,
    );
  }
}
