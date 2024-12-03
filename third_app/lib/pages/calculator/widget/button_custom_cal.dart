import 'package:flutter/material.dart';

class ButtonCustomCal extends StatelessWidget {
  final String operation;
  final VoidCallback onPressed;

  const ButtonCustomCal({
    super.key,
    required this.operation,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      child: Text(
        operation,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
