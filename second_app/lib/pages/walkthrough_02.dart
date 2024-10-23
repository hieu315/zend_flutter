import 'package:flutter/material.dart';

class Walkthrough02 extends StatelessWidget {
  const Walkthrough02({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/images/BACKGROUND.png')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 65,
                        bottom: 140,
                        child: Image.asset(
                          'assets/images/Group (8).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        left: 65,
                        bottom: 140,
                        child: Image.asset(
                          'assets/images/Group (9).png',
                          height: 90,
                          width: 90,
                        ),
                      ),
                      Positioned(
                        right: 35,
                        bottom: 132,
                        child: Image.asset(
                          'assets/images/Group.png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        right: 75,
                        bottom: 140,
                        child: Image.asset(
                          'assets/images/Group (1).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        left: 11,
                        bottom: 60,
                        child: Image.asset(
                          'assets/images/Group (7).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        left: 100,
                        bottom: 50,
                        child: Image.asset(
                          'assets/images/Group (2).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        right: 30,
                        bottom: 35,
                        child: Image.asset(
                          'assets/images/Group (5).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        left: 30,
                        bottom: 15,
                        child: Image.asset(
                          'assets/images/Group (6).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        right: 50,
                        bottom: 0,
                        child: Image.asset(
                          'assets/images/Group (4).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Positioned(
                        right: -5,
                        bottom: 0,
                        child: Image.asset(
                          'assets/images/Group (3).png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                    ],
                  ),
                ),

                const Text(
                  'Best Quality Grocery at your doorstep!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),

                // Subtitle/Description
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
