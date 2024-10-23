import 'package:flutter/material.dart';
import 'package:second_app/pages/bt_06.dart';
import 'package:second_app/pages/walkthrough_02.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Walkthrough02(),
      debugShowCheckedModeBanner: false,
    );
  }
}
