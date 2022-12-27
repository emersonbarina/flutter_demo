import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {
  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
      subtitle1: GoogleFonts.poppins(
        color: Colors.black54,
        fontSize: 24,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.white70,
      ),
      subtitle1: GoogleFonts.poppins(
        color: Colors.white60,
        fontSize: 24,
      ),
    ),
  );
}