import 'package:flutter/material.dart';
import 'package:flutter_demo_theme/src/constants/sizes.dart';

import '../../../constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(tBorderRadiusCircular)),
      prefixIconColor: tSecondaryColor,
      suffixIconColor: tSecondaryColor,
      floatingLabelStyle: const TextStyle(color: tSecondaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(tBorderRadiusCircular),
        borderSide: const BorderSide(width: 2, color: tSecondaryColor),
      ));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(tBorderRadiusCircular)),
      prefixIconColor: tPrimaryColor,
      suffixIconColor: tPrimaryColor,
      floatingLabelStyle: const TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(tBorderRadiusCircular),
        borderSide: const BorderSide(width: 2, color: tPrimaryColor),
      ));
}
