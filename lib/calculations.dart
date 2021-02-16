import 'dart:math';

class Calculation {
  Calculation({this.height, this.weight});

  final int height;
  final int weight;
  double bmi;

  String calculateBmi() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than a normal. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than a normal. You can eat a bit more.';
    }
  }
}
