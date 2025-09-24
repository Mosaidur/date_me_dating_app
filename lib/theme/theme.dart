import 'package:flutter/material.dart';

final Color primaryColor = Color(0xFF4B164C);
final Color secondary1 = Color(0xFFDD88CF);
final Color buttonBg = Color(0xFFF8E7F6);

final ThemeData appTheme = ThemeData(
  fontFamily: 'Mulish',
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600), // SemiBold
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w500), // Medium
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w500), // Medium
    headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w400), // Regular
    headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w400), // Regular
    headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500), // Medium
    bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w400), // Regular
    bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w300), // Light
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w200), // ExtraLight
  ),
);
