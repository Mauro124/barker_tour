import 'package:barker_tour/core/styles/colors.styles.dart';
import 'package:barker_tour/core/styles/fonts.styles.dart';
import 'package:flutter/material.dart';

const kPaddingApp = EdgeInsets.all(12.0);
const kPaddingAppHorizontal = EdgeInsets.symmetric(horizontal: 16.0);
const kRadiusCorner = 32.0;

final ThemeData lightTheme = ThemeData(
  fontFamily: 'Roboto',
  colorScheme: ColorScheme.fromSwatch().copyWith(
    brightness: Brightness.light,
    primary: kPrimaryColor,
    secondary: kSecondaryColor,
    background: kSecondaryColor50,
    tertiary: kTertiaryColor,
    tertiaryContainer: kTertiaryColor50,
    error: kErrorColor,
    errorContainer: kErrorColor50,
    inversePrimary: kInversePrimaryColor,
    outline: kSecondaryColor,
  ),
  textTheme: TextTheme(
    displayLarge: kHeadline1,
    displayMedium: kHeadline2,
    displaySmall: kHeadline3,
    titleMedium: kSubtitle1,
    titleSmall: kSubtitle2,
    bodyLarge: kBodyText1,
    bodyMedium: kBodyText2,
    labelLarge: kButton,
    bodySmall: kCaption,
    labelSmall: kOverline,
  ),
  disabledColor: kDisabledColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
  ),
);
