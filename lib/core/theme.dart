import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/color_constant.dart';

class CustomTheme {
  //
  static ThemeData getTheme(BuildContext context) => _themeData(context);

  static ThemeData _themeData(context) {
    return ThemeData(
      typography: Typography(),
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      textTheme:
          GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: greyTextColor,
      ),
      fontFamily: GoogleFonts.poppins().fontFamily,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
    );
  }
}
