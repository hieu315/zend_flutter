import 'package:flutter/material.dart';

class bt_02 extends StatelessWidget {
  const bt_02({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                boxMethod(Alignment.center),
                boxMethod(Alignment.center),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                boxMethod(Alignment.center),
                boxMethod(Alignment.center),
              ],
            ),
          ],
        ),
        Center(child: boxMethod(Alignment.center, true, true))
      ],
    );
  }

  Widget boxMethod(Alignment direction, [bool boxRadius = false, bool innerCircle = false]) {
    return Container(
      decoration: BoxDecoration(
        color: boxRadius ? Color.fromRGBO(104, 67, 252, 1) : Color.fromRGBO(85, 177, 172, 1),
        borderRadius: BorderRadius.circular(boxRadius ? 100 : 0)
      ),
      width: 160,
      height: 160,
      child: innerCircle ? Center(
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ) : null,
    );
  }
}