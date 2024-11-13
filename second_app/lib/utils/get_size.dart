import 'package:flutter/material.dart';

Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double getWidth(BuildContext context) {
  return getSize(context).width;
}

double getHeight(BuildContext context) {
  return getSize(context).height;
}

SizedBox spaceHeight(BuildContext context, {percent = 0.02}) {
  return SizedBox(height: getHeight(context) * percent);
}
