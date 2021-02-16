import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onpressed});
  final String buttonTitle;
  final Function onpressed;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        color: Color(0xFFEB1555),
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: bBottomButtonheight,
      ),
    );
  }
}
