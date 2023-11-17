import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    textTheme: GoogleFonts.aladinTextTheme(
      Theme.of(context).textTheme,
    ),
    primarySwatch: Colors.green,
  );
}