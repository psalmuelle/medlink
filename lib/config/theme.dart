import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xff8667f2),
    scaffoldBackgroundColor: Colors.white,
    colorScheme:const ColorScheme.light(secondary: Color(0xffe0e7ff)),

    fontFamily: 'Inter',

    textTheme: TextTheme(
      
      displayLarge: GoogleFonts.inter(
        color: const Color(0xff353535),
        fontWeight: FontWeight.bold,
        fontSize: 28
        ),

        displayMedium: GoogleFonts.inter(
        color:  const Color(0xff353535),
        fontWeight: FontWeight.w600,
        fontSize: 24
        ),

        bodyLarge: GoogleFonts.inter(
        color: const Color(0xff353535),
        fontWeight: FontWeight.normal,
        fontSize: 18
        ),

          bodyMedium: GoogleFonts.inter(
        color: const Color(0xff353535),
        fontWeight: FontWeight.normal,
        fontSize: 16
        ),
        ),

        buttonTheme:const ButtonThemeData(
          buttonColor: Color(0xff8667f2),
          

        )
      
  );
}