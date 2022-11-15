import 'package:flutter/material.dart';

import 'constants.dart';

class ButtonButton extends StatelessWidget {
  const ButtonButton(
      {Key key, @required this.onClickTitle, @required this.onTap})
      : super(key: key);

  final String onClickTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        color: Colors.red,
        height: 100,
        width: double.infinity,
        child: Text(
          onClickTitle,
          style: KGenderTextStyle,
        ),
      ),
    );
  }
}
