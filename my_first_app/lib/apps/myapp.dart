import 'package:flutter/material.dart';
import 'package:my_first_app/pages/bt_01.dart';
import 'package:my_first_app/pages/bt_02.dart';
import 'package:my_first_app/pages/bt_03.dart';
import 'package:my_first_app/pages/bt_04.dart';
import 'package:my_first_app/pages/bt_08.dart';
import 'package:my_first_app/pages/walkthrough_02.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bt08(),
      debugShowCheckedModeBanner: false,
    );
  }
}
