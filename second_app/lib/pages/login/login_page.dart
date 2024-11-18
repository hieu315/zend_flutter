import 'package:flutter/material.dart';
import 'package:second_app/apps/routers/router_name.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login page"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  RouterName.root,
                );
              },
              child: const Text(
                'Login page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
