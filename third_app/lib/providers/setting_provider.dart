import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  int number = 0;

  void add() {
    number++;
    notifyListeners();
  }

  void minus() {
    number--;
    notifyListeners();
  }
}
