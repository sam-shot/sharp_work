import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

extension BuildContextETX on BuildContext {
  // COLORS
  Color get primaryColor => SharpColors.purple;
  Color get primaryColorLight => SharpColors.purpleLight;
  Color get yellow => SharpColors.yellow;
  Color get teal => SharpColors.teal;
  Color get white => SharpColors.white;

  // TYPOGRAPHY

  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;
}
