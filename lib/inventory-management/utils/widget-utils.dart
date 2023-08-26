import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget TextWidget({
  required String text,
  Color? color,
  double? fontSize,
}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: fontSize),
  );
}
