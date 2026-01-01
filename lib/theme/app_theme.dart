import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.grey.shade100,

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      secondary: Colors.orange,
      background: Colors.grey.shade100,
    ),

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
      ),

      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),

      bodySmall: TextStyle(
        fontSize: 14,
        color: Colors.white70,
      ),
    ),
  );
}
