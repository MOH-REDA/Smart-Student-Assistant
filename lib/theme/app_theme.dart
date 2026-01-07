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

    listTileTheme: ListTileThemeData(
      iconColor: Colors.orange.shade700, // Tied to brand instead of hardcoded red
      textColor: Colors.black87,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      visualDensity: VisualDensity.compact,
      titleTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.lightBlue.shade800,
      foregroundColor: Colors.white,

      centerTitle: true,

      elevation: 0,
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
