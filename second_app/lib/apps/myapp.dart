import 'package:flutter/material.dart';
import 'package:second_app/pages/23102024_bt.dart';
import 'package:second_app/pages/bt_06.dart';
import 'package:second_app/pages/walkthrough_02.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bt06(),
      debugShowCheckedModeBanner: false,
    );
  }
}
