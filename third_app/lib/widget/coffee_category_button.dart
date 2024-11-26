import 'package:flutter/material.dart';

class CoffeeCategoryButton extends StatelessWidget {
  final String text;

  const CoffeeCategoryButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xffBD9A6F),
          fontSize: 16.0,
        ),
      ),
    );
  }
}
