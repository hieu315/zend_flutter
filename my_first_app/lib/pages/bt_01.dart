import 'package:flutter/material.dart';

class Bt_01 extends StatelessWidget {
  const Bt_01({super.key});

  @override
  Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: boxMethod(),
          ),
          const SizedBox(height: 40),
          const Text(
            'Lorem ipsum dolor sit amet consectetur.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Lorem ipsum dolor sit amet consectetur. Consequat facilisis gravida vitae sagittis aenean. Ipsum egestas consequat arcu tellus facilisis consequat sit.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      );
  }

  BoxDecoration boxMethod() {
    return const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          );
  }
  
}