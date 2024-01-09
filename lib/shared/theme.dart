import 'package:flutter/material.dart';

const kPaddingApp = EdgeInsets.all(12.0);
const kPaddingAppHorizontal = EdgeInsets.symmetric(horizontal: 16.0);
const kRadiusCorner = 32.0;

final ThemeData theme = ThemeData(
  fontFamily: 'Nimbus',
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: Colors.white,
    primary: const Color(0xFFBCB8AC),
    primaryContainer: const Color(0xFF8C8674),
    secondary: const Color(0xFFBFB7A8),
    secondaryContainer: const Color(0xFF403C38),
    tertiary: const Color(0xFFF2AC57),
    tertiaryContainer: const Color(0xFFE5E5E5),
    error: const Color(0xFFF25757),
    errorContainer: const Color(0xFFE5E5E5),
    inversePrimary: const Color(0xFF000000),
    outline: const Color(0xFFE5E5E5),
    background: const Color(0xFFE5E5E5),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.5,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.5,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    headlineLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Color(0xFF3F51B5),
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
  disabledColor: Colors.grey,
);
