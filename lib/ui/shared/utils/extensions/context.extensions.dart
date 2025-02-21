import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

extension BuildContextETX on BuildContext {
  // COLORS
  Color get primaryColor => SharpColors.purple;
  Color get primaryColorLight => SharpColors.purpleLight;
  Color get yellow => SharpColors.yellow;
  Color get teal => SharpColors.teal;
  Color get white => SharpColors.white;
  Color get grey => SharpColors.grey;
  Color get lightGrey => SharpColors.lightGrey;
  Color get red => SharpColors.red;
  Color get black => SharpColors.black;

  // TYPOGRAPHY

  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get labelSmall => Theme.of(this).textTheme.labelSmall!;
  TextStyle get labelMedium => Theme.of(this).textTheme.labelMedium!;
  TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge!;


  // SIZINGS

  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
}
