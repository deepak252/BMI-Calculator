
import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  double _bmi;
  
  CalculatorBrain({ this.height,this.weight});
  
  String getResult()
  {
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getStatus()
  {
    if(_bmi<=18.5) return 'underweight';
    if(_bmi>=25.0) return 'overweight';
    return 'normal';
  }
  String getInterpretation()
  {
    if(_bmi<=18.5) return 'You have lower weight than normal body. You can eat a bit more🤤';
    if(_bmi>=25.0) return 'You have higher weight than normal body. Don\'t eat too much, try to exercise more 🤔';
    return 'You have a normal body weight. Great!🤩';
  }
}