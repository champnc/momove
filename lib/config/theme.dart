import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momove/config/constant.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    primaryColorDark: kPrimaryColorDark,
    primaryColorLight: kPrimaryColorLight,

    textTheme: GoogleFonts.varelaRoundTextTheme(
      Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
    ),

    );
}
