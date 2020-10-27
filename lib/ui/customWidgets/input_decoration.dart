import 'package:flutter/material.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

const textInputDecoration = InputDecoration(
  fillColor: MyColors.textFieldFill,
  filled: true,
  counterText: '',
  hintStyle: TextStyle(fontSize: FontSizes.textSize14),
  contentPadding: EdgeInsets.all(12.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: MyColors.textFieldFill, width: 2.0),
    borderRadius: const BorderRadius.all(
      const Radius.circular(10.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: MyColors.textFieldFill, width: 2.0),
    borderRadius: const BorderRadius.all(
      const Radius.circular(10.0),
    ),
  ),
  
);