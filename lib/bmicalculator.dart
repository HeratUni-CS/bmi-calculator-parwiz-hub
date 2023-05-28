import 'dart:math';

class BmiCalculate {
  int height;
  int weight;
  double bmi=0;
    
  
  BmiCalculate({required this.height, required this.weight,}) {
    bmi = weight / pow(height / 100, 2);
  }
  String getResult() {
    if (bmi > 18.5) {
      return 'UNDERWEIGHT';
    } else if (bmi > 25) {
      return 'NORMAL';
    } else if (bmi > 30) {
      return 'OVERWEIGHT';
    } else {
      return 'obese';
    }
  }

  getbmi() {
    return bmi.toStringAsFixed(2);
  }
  String getInterprate(){
     if (bmi > 18.5) {
      return 'YOUR DYING';
    } else if (bmi > 25) {
      return 'TOUR GOOD';
    } else if (bmi > 30) {
      return 'YOUR FAT';
    } else {
      return 'EXPLODING  ';
    }

  }
}
