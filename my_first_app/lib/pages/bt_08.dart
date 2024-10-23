import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bt08 extends StatelessWidget {
  const Bt08({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Lorem ipsum dolor sit amet consectetur.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'IngridDarling',
            ),
          ),
          Image.asset(
            'assets/images/Rectangle11.png',
            height: 400,
            width: 400,
          ),
          Text(
            'This is Google Fonts',
            style: GoogleFonts.ingridDarling(),
          ),
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4s7/PNG_transparency_demonstration_1.png/280px-PNG_transparency_demonstration_1.png',
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return Image.asset(
                'assets/images/Rectangle11.png',
                height: 400,
                width: 400,
              );
            },
            height: 400,
            width: 400,
          ),
        ],
      ),
    );
  }
}
