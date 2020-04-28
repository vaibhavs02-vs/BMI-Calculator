import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You have slightly higher weight.Try to exercise more dude';
    } else if (_bmi > 18.5) {
      return 'You are perfect champ.GOOD JOB!';
    }
    else {
      return 'You have slightly lower body weight than normal.Eat more .Be Bulky';
    }
  }

}
