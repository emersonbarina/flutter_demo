import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  // Light Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        foregroundColor: tSecondaryColor,
        side: const BorderSide(color: tSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );

  // Dark Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        foregroundColor: tWhiteColor,
        side: const BorderSide(color: tWhiteColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}
