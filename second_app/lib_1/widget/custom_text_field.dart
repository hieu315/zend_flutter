import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.obscureText = false,
  });

  Widget? prefixIcon, suffixIcon;
  String? hintText;
  bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.obscureText
            ? InkWell(
                onTap: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
                child: widget.suffixIcon,
              )
            : null,
        border: const OutlineInputBorder(),
        hintText: widget.hintText,
      ),
    );
  }
}
