import 'package:flutter/material.dart';

const genderTextStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w700);

class GenderCard extends StatelessWidget {
  const GenderCard({Key key, @required this.icon, @required this.gender})
      : super(key: key);
  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(height: 10),
        Text(
          gender,
          style: genderTextStyle,
        ),
      ],
    );
  }
}
