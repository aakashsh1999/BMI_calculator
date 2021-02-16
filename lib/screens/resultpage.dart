import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/components/reuseblecard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiText,
      @required this.resultText,
      @required this.interpretationText});

  final String bmiText;
  final String resultText;
  final String interpretationText;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15.0),
              child: Text('Your Result', style: kLargeButtonTextStyle),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: bactiveCardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText, style: kResultTextStyle),
                      Text(bmiText, style: kBMITextStyle),
                      Text(interpretationText, style: kBodyTextStyle),
                    ]),
              ),
            ),
            BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onpressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ));
  }
}
