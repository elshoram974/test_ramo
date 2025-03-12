import 'package:flutter/material.dart';

extension ThemeEX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  bool get isDarkMode => MediaQuery.platformBrightnessOf(this) == Brightness.dark;
}
