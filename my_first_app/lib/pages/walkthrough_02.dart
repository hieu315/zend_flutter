import 'package:flutter/material.dart';

class Walkthrough02 extends StatelessWidget {
  const Walkthrough02({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet consectetur.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'IngridDarling',
            ),
          ),
        ],
      ),
    );
  }
}
