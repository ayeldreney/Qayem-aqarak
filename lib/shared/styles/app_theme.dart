import 'package:flutter/material.dart';

class AppTheme {
  static Color onBoardingBackGroundColor = Color(0xFFF8F8F8);
  static Color primaryColor = Color.fromRGBO(20, 100, 137, 10);

  static ThemeData theme = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFF7AF0C),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
