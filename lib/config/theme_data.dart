// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppThemes {
  static final appThemeData = ThemeData(
    primaryColor: Color(0xFF1A5333),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22)),
      bodyText2: GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
      // bodyText3: GoogleFonts.abel(
      //     textStyle: const TextStyle(
      //         color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
      headline1: GoogleFonts.abel(
          textStyle: TextStyle(
        color: Colors.white,
        fontSize: 25.sp,
        fontWeight: FontWeight.bold,
      )),
      headline2: GoogleFonts.acme(
          textStyle: TextStyle(
        color: Colors.black,
        fontSize: 23.sp,
      )),
    ),
  );
}
