import 'package:flutter/material.dart';
import 'widgets_themes/text_theme.dart';

class TAppTheme {

  TAppTheme._();

  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lighTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
  );
}