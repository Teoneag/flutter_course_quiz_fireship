import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
  fontFamily: GoogleFonts.nunito().fontFamily,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  brightness: Brightness.dark,
);
