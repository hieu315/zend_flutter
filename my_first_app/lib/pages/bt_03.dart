import 'package:flutter/material.dart';

class Bt03 extends StatelessWidget {
  const Bt03({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xfff6e299),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Lorem ipsum dolor sit amet consectetur',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
          ),
          SizedBox(height: 50),
          boxMethod(Alignment.center, true, true),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor sit amet consectetur. Consequat facilisis gravida vitae sagittis aenean. Ipsum egestas consequat arcu tellus facilisis consequat sit.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget boxMethod(Alignment direction, [bool isMainCard = false, bool showBanner = false]) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xff55b1ac),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[300]!, width: 1),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),       
        ],
      ),
    );
  }
}

