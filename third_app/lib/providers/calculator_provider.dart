import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();

  String _result = '0';
  final List<String> _history = [];

  String get result => _result;
  List<String> get history => _history;

  void calculate(String operation) {
    final String firstNumber = firstNumberController.text;
    final String secondNumber = secondNumberController.text;

    if (firstNumber.isEmpty || secondNumber.isEmpty) {
      _result = "Invalid Input";
    } else {
      double firstNum = double.tryParse(firstNumber) ?? 0.0;
      double secondNum = double.tryParse(secondNumber) ?? 0.0;

      switch (operation) {
        case '+':
          _result = (firstNum + secondNum).toString();
          break;
        case '-':
          _result = (firstNum - secondNum).toString();
          break;
        case '*':
          _result = (firstNum * secondNum).toString();
          break;
        case '/':
          if (secondNum != 0) {
            _result = (firstNum / secondNum).toString();
          } else {
            _result = "Error (Div by 0)";
          }
          break;
        default:
          _result = "Invalid Operation";
      }
      _history.insert(0, "$firstNumber $operation $secondNumber = $_result");
    }
    notifyListeners();
  }

  void removeFromHistory(int index) {
    _history.removeAt(index);
    notifyListeners();
  }
}
