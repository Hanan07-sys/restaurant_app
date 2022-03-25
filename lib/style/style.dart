import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Colors.white;
final Color secondaryColor = Color(0xFFAD8B73);
final Color listColor = Color(0xFFE3CAA5);
final Color appBarColor = Colors.brown;
final Color dividerColor = Colors.black;

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.montserrat(
      fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.merriweather(
      fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3:
  GoogleFonts.merriweather(fontSize: 48, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.nunito(
      fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 0.25, color: Colors.black),
  headline5:
  GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),
  headline6: GoogleFonts.nunito(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15,color: Colors.black),
  subtitle1: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15,color: Colors.grey),
  subtitle2: GoogleFonts.openSans(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 0.5),
  bodyText2: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.libreFranklin(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 0.4),
  overline: GoogleFonts.libreFranklin(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
