import 'package:flutter/material.dart';
import 'text_theme.dart';

class TAppTheme {
  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lighTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
  );
}