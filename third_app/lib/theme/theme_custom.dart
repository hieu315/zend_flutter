import 'package:flutter/material.dart';

class ThemeCustom {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      textTheme: const TextTheme(
          headlineMedium: TextStyle(
    color: Colors.red,
  )));
  static ThemeData darkTheme = ThemeData.dark().copyWith(
      textTheme: const TextTheme(
          headlineMedium: TextStyle(
    color: Colors.blue,
  )));
}
