import 'package:design_test/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  static ThemeData apptheme() {
    return ThemeData(
      useMaterial3: false,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AlphaColors().blueColor,
        selectionColor: AlphaColors().blueColor,
        selectionHandleColor: AlphaColors().blueColor,
      ),
      fontFamily: GoogleFonts.nunito().fontFamily,
      primaryColor: AlphaColors().white,
      primaryIconTheme: IconThemeData(
        color: AlphaColors().purpul,
      ),
    );
  }
}
