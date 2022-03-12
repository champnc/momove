import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    primaryColor: const Color(0xFF1DE9B6),
    primaryColorDark: const Color(0xFF00BFA5),
    primaryColorLight: const Color(0xFF64FFDA),

    textTheme: GoogleFonts.varelaRoundTextTheme(
      Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
    ),

    );
}
