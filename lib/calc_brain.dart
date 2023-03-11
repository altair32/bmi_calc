import 'dart:math';

class calc_brain
{
  calc_brain({required this.height, required this.weight});
  final double height;
  final int weight;

  double _bmi=0.0;

  String calculateBMI()
  {
    _bmi= weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    if(_bmi>=25)
      {
        return 'Overweight';
      }
    else if(_bmi >18.5)
      {
        return 'Normal';
      }
    else
      return 'Underweight';
  }
  String interpret(){
    if(_bmi>=25)
      return 'You have a higher than normal body weight.';
    else if (_bmi>=18.5)
      return 'You have a normal body weight';
    else
      return 'you are underweight';
  }
}