import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constant.dart';

class CustomTheme {
  static getTheme(context) {
    return _themeData();
  }

  static ThemeData _themeData() {
    return ThemeData(
      typography: Typography(),
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      
    );
  }
}
