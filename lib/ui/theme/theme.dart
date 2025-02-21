import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SharpTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Jakarta',
    textTheme: TextTheme(
      headlineLarge: sharpTextStyle.copyWith(
        fontSize: 28.r,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
      ),
      headlineMedium: sharpTextStyle.copyWith(
        fontSize: 28.r,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ),
      headlineSmall: sharpTextStyle.copyWith(
        fontSize: 26.r,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      titleLarge: sharpTextStyle.copyWith(
        fontSize: 20.r,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: sharpTextStyle.copyWith(
        fontSize: 18.r,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: sharpTextStyle.copyWith(
        fontSize: 16.r,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: sharpTextStyle.copyWith(
        fontSize: 16.r,
        fontWeight: FontWeight.w300,
      ),
      bodyMedium: sharpTextStyle.copyWith(
        fontSize: 14.r,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: sharpTextStyle.copyWith(
        fontSize: 12.r,
        fontWeight: FontWeight.w300,
      ),
      labelLarge: sharpTextStyle.copyWith(
        fontSize: 16.r,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: sharpTextStyle.copyWith(
        fontSize: 14.r,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: sharpTextStyle.copyWith(
        fontSize: 12.r,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

final TextStyle sharpTextStyle = TextStyle(
  fontSize: 16.r,
  fontWeight: FontWeight.w500,
  letterSpacing: -0.2,
);
