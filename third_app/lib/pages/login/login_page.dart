import 'package:flutter/material.dart';
import 'package:third_app/apps/routers/router_name.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCBCBB7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Mask group.png',
                  fit: BoxFit.contain,
                ),
                const Spacer(),
                const SizedBox(height: 20),
                const Text(
                  'Stay Focused',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(height: 10),
                Transform.rotate(
                  angle: -1 * 3.14159 / 180,
                  child: const Text(
                    'Get the cup filled of your choice to stay focused and awake. Different type of coffee menu, hot latte cappuccino.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      RouterName.root,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffBD9A6F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 35),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dive In',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xfff2f2f2)),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xfff2f2f2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
