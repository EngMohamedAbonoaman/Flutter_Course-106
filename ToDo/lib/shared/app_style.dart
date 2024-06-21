import 'package:flutter/material.dart';
import 'package:todo3/shared/app_colors.dart';

class AppStyle {
  static TextStyle largeStyle = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white);
  static TextStyle mediumStyle = const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 20, color: AppColor.secondColor);
  static TextStyle smallStyle =
      const TextStyle(fontSize: 16, color: Colors.black);
}
