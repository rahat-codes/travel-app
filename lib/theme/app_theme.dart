import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF7C6BA8);
  static const Color background = Color(0xFFF5F3F8);
  static const Color surface = Color(0xFFFFFFFF);

  // Colors used throughout the app
  static const Color dark = Color(0xFF1E1D22);
  static const Color secondaryText = Color(0xFF77747D);

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor: background,

      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        brightness: Brightness.light,
      ),

      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: secondaryText,
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),

      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 0,
        height: 76,
        indicatorColor: Color(0xFFE8E0F4),
      ),
    );
  }
}