import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/color_constant.dart';

class CustomTheme {
  //
  static ThemeData getTheme(BuildContext context) => _themeData(context);

  static TextStyle largeText(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 65.0,
          fontWeight: FontWeight.bold,
          color: blackColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        );
  }

  static TextStyle semiLargeText(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          color: blackColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        );
  }

  static TextStyle mediumText(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: blackColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        );
  }

  static TextStyle normalText(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: blackColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        );
  }

  static TextStyle smallText(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.w300,
          color: blackColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        );
  }

  static TextStyle smallestText(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 10.0,
          fontWeight: FontWeight.w300,
          color: blackColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        );
  }

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
      tabBarTheme: TabBarTheme(
      
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: blackColor,
        unselectedLabelColor: greyTextColor,
        labelStyle: CustomTheme.mediumText(context).copyWith(
          color: blackColor,
          fontWeight: FontWeight.w900,
        ),
        unselectedLabelStyle: CustomTheme.mediumText(context).copyWith(
          color: greyTextColor,
          fontWeight: FontWeight.w900,
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
    );
  }
}
