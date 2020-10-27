import 'dart:ui';

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign align;

  CustomText({this.text, this.fontSize, this.color, this.fontWeight, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}
