import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    primaryColor: const Color(0xFF8888E0),
    primaryColorDark: const Color(0xFF4B4BD0),
    primaryColorLight: const Color(0xFFB0B0EB),

    textTheme: GoogleFonts.varelaRoundTextTheme(
      Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
    ),

    );
}
