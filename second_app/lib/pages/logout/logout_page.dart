import 'package:flutter/material.dart';
import 'package:second_app/apps/routers/router_name.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Logout page"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, RouterName.loginPage,
                    arguments: {'exampleArgument': 'hello'});
              },
              child: const Text(
                'Logout page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
