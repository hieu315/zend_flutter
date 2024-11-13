import 'package:flutter/material.dart';
import 'package:second_app/utils/get_size.dart';

class ButtonCustom extends StatelessWidget {
  ButtonCustom({
    super.key,
    this.backgroundColor = const Color(0xff7743DB),
    required this.onPress,
    this.title = "",
    this.borderColor = const Color(0xff7743DB),
    this.borderWidth = 2.0,
  });

  Color backgroundColor;
  Function() onPress;
  String title;
  Color borderColor;
  double borderWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: borderColor == const Color(0xff7743DB)
                  ? Colors.white
                  : const Color(0xff7743DB),
              width: borderWidth,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 18,
          ),
          child: Text(
            title,
            style: TextStyle(
                color: backgroundColor == const Color(0xff7743DB)
                    ? Colors.white
                    : const Color(0xff7743DB)),
          ),
        ),
      ),
    );
  }
}
