import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/utils/theme/widgets_themes/appbar_theme.dart';
import 'package:flutter_demo_theme/src/utils/theme/widgets_themes/elevated_button_theme.dart';
import 'package:flutter_demo_theme/src/utils/theme/widgets_themes/outlined_button_theme.dart';
import 'package:flutter_demo_theme/src/utils/theme/widgets_themes/text_field_theme.dart';
import 'widgets_themes/text_theme.dart';

class TAppTheme {

  TAppTheme._();

  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
  );
}