import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// ignore: must_be_immutable
class IconContent extends StatelessWidget {
  IconContent({this.icon, this.text});
  String text;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 10.0),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
