import 'package:flutter/material.dart';

class Bt04 extends StatelessWidget {
  const Bt04 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pair of Linear Equation in Two Variables',
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                const Text(
                  'Maths / Real Numbers',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    _buildScoreContainer('4', 'Correct Answers', Colors.green),
                    SizedBox(width: 8),
                    _buildScoreContainer('5', 'Wrong Answers', Colors.red),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildOptionButton('A. Intersect at one point'),
          SizedBox(height: 12),
          _buildOptionButton('B. Intersect at two point'),
          SizedBox(height: 12),
          _buildOptionButton('C. Parallel'),
          SizedBox(height: 12),
          _buildOptionButton('D. Coincident'),
          
        ],
      ),
    );
  }

  Widget _buildScoreContainer(String score, String label, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              score,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF2C2C2C),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}