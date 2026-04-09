import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VelvetTheme{
  static const Color midnight = Color(0xFF121212);
  static const Color charcoal = Color(0xFF1E1E1E);
  static const Color goldAccent = Color(0xFFD4AF37);
  static const Color silkWhite = Color(0xFFF5F5F5);

  static ThemeData darkLuxury = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: midnight,
    primaryColor: goldAccent,
    colorScheme: const ColorScheme.dark(
      primary: goldAccent,
      secondary: goldAccent,
      surface: charcoal,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.playfairDisplay(
        fontSize: 72,
        fontWeight: FontWeight.bold,
        color: silkWhite,
        letterSpacing:-1.5
      ),
      bodyLarge: GoogleFonts.montserrat(
        fontSize: 18,
        height: 1.6,
        color: silkWhite.withOpacity(0.8),
      ),
      labelLarge: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        letterSpacing: 2.0,
        color: goldAccent,
      ),

    ),

  );
}
