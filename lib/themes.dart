import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get lightTheme=> ThemeData(
  primarySwatch: Colors.blue,
  appBarTheme:AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),
  //textTheme: Theme.of(context).textTheme,
  ),
  fontFamily: GoogleFonts.lato().fontFamily,
  //primaryTextTheme: GoogleFonts.lateefTextTheme(),

  //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

  );
}