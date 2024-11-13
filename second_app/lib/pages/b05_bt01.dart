import 'package:flutter/material.dart';
import 'package:second_app/utils/get_size.dart';
import 'package:second_app/widget/button_custom.dart';
import 'package:second_app/widget/custom_text_field.dart';

class B05Bt01 extends StatelessWidget {
  const B05Bt01({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7743DB),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80.0),
            const Text(
              'Tanam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Grocery App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 80.0),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 32.0),
                      CustomTextField(
                        prefixIcon:
                            const Icon(Icons.supervised_user_circle_outlined),
                        hintText: 'Louis Anderson',
                      ),
                      const SizedBox(height: 16.0),
                      CustomTextField(
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'louisanderson@mail.com',
                      ),
                      const SizedBox(height: 16.0),
                      CustomTextField(
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'Password',
                        obscureText: true,
                        suffixIcon: const Icon(Icons.visibility_off),
                      ),
                      const SizedBox(height: 32.0),
                      ButtonCustom(
                        backgroundColor: const Color(0xff7743DB),
                        title: 'REGISTER',
                        onPress: () {},
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (_) {},
                            fillColor: WidgetStateProperty.all<Color>(
                                const Color(0xff7743DB)),
                          ),
                          const SizedBox(width: 8.0),
                          const Text(
                            'By tapping "Sign Up" you accept our terms and condition',
                            style: TextStyle(
                              color: Color(0xff7743DB),
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Already have account?',
                          style: TextStyle(
                            color: Color(0xff7743DB),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      ButtonCustom(
                        backgroundColor:
                            const Color.fromARGB(255, 253, 253, 253),
                        title: 'SIGN IN',
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
