import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    actionsIconTheme: IconThemeData(color: tDarkColor),
    iconTheme: IconThemeData(color: tDarkColor),
  );

  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    actionsIconTheme: IconThemeData(color: tWhiteColor),
    iconTheme: IconThemeData(color: tWhiteColor),
  );
}
