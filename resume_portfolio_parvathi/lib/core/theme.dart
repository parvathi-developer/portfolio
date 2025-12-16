import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF9FAFB), // very light background
    primaryColor: const Color(0xFF111827), // dark neutral (not blue)

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Color(0xFF111827), // near black
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF374151), // dark grey
        fontSize: 15,
      ),
      titleLarge: TextStyle(
        color: Color(0xFF111827),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
