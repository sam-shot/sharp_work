import 'package:flutter/material.dart';

class SharpTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Jakarta',
    textTheme: TextTheme(
      headlineLarge: sharpTextStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
      ),
      headlineMedium: sharpTextStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ),
      headlineSmall: sharpTextStyle.copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      titleLarge: sharpTextStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: sharpTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: sharpTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

final TextStyle sharpTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  letterSpacing: -0.2,
);
