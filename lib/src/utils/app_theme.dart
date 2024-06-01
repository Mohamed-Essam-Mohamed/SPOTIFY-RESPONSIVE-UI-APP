import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dartTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    scaffoldBackgroundColor: const Color(0xFF121212),
    primaryColor: Colors.black,
    iconTheme: const IconThemeData().copyWith(color: Colors.white),
    fontFamily: 'Montserrat',
  );
}
