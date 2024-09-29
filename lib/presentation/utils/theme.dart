import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPaddingApp = EdgeInsets.all(24.0);
const kPaddingAppVerySmall = EdgeInsets.all(8.0);
const kPaddingAppSmall = EdgeInsets.all(16.0);
const kPaddingAppMedium = EdgeInsets.all(20.0);
const kPaddingAppLarge = EdgeInsets.all(48.0);
const kPaddingAppHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
const kPaddingAppHorizontalLarge = EdgeInsets.symmetric(horizontal: 48.0);
const kPaddingAppHorizontalSmall = EdgeInsets.symmetric(horizontal: 16.0);
const kPaddingAppHorizontalVerySmall = EdgeInsets.symmetric(horizontal: 8.0);
const kPaddingAppVertical = EdgeInsets.symmetric(vertical: 24.0);
const kPaddingAppVerticalLarge = EdgeInsets.symmetric(vertical: 48.0);
const kPaddingAppVerticalSmall = EdgeInsets.symmetric(vertical: 16.0);
const kRadiusCornerOutside = 6.0;
const kRadiusCornerInside = 4.0;
var kShadow = BoxShadow(
  color: colorScheme.shadow,
  blurRadius: 5,
  offset: Offset.zero,
);
const kBorderThin = 1.0;
const kBorderMedium = 2.0;
const kBorderThick = 4.0;
const kBorderExtraThick = 8.0;

const inputDataTableDecoration = InputDecoration(
  contentPadding: EdgeInsets.zero,
  fillColor: Colors.transparent,
  border: InputBorder.none,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  focusColor: Colors.transparent,
  hoverColor: Colors.transparent,
);

var dropdownAsFilterDecoration = InputDecoration(
  border: const OutlineInputBorder(borderSide: BorderSide.none),
  focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
  errorBorder: const OutlineInputBorder(borderSide: BorderSide.none),
  focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide.none),
  enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
  disabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
  fillColor: colorScheme.surface,
  contentPadding: EdgeInsets.zero,
  filled: true,
);

final dataTableDecoration = {
  'border': TableBorder(
    horizontalInside: BorderSide(color: colorScheme.primaryContainer),
    verticalInside: BorderSide(color: colorScheme.primaryContainer),
    bottom: BorderSide(color: colorScheme.primaryContainer),
    top: BorderSide(color: colorScheme.primaryContainer),
  ),
  'minWidth': 1200,
  'rowsPerPage': 20,
  'wrapInCard': false,
  'headingRowHeight': 42,
  'headingRowColor': WidgetStateProperty.resolveWith((states) => colorScheme.primary),
  'headingTextStyle': TextStyle(fontSize: 14.0, color: colorScheme.onPrimary),
  'dataRowHeight': 42,
  'checkboxAlignment': Alignment.center,
  'checkboxHorizontalMargin': 0,
  'headingCheckboxTheme': CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) => colorScheme.primaryContainer),
    side: BorderSide(color: colorScheme.outline),
    checkColor: WidgetStateProperty.resolveWith((states) => colorScheme.primary),
  ),
  'datarowCheckboxTheme': CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) => colorScheme.tertiaryContainer),
    side: BorderSide(color: colorScheme.outline),
    checkColor: WidgetStateProperty.resolveWith((states) => colorScheme.secondary),
  ),
};

final ColorScheme colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xFF000000),
  primary: const Color(0xFF083163),
  primaryContainer: const Color(0xffffffff),
  onPrimary: const Color(0xFFFFFFFF),
  onPrimaryContainer: const Color(0xff000000),
  secondary: const Color(0xff08633A),
  secondaryContainer: const Color(0xff000000),
  onSecondary: const Color(0xffFFFFFF),
  onSecondaryContainer: const Color(0xffFFFFFF),
  tertiary: const Color(0xff546881),
  tertiaryContainer: const Color(0xFFEAEDF1),
  tertiaryFixed: const Color(0xFFA3ADBB).withOpacity(0.7),
  onTertiary: const Color(0xffFFFFFF),
  onTertiaryContainer: const Color(0xff000000),
  inversePrimary: const Color(0xFF0D0D0D),
  inverseSurface: const Color(0xFF1C1C1C),
  outline: const Color(0xFFA3ADBB).withOpacity(0.2),
  outlineVariant: const Color(0xFFFFFFFF),
  error: const Color(0xFFE52C2C),
  errorContainer: const Color(0xFFFFD8E4),
  onError: const Color(0xFFFFFFFF),
  surface: const Color(0xFFFFFFFF),
  surfaceTint: const Color(0xFFE5E5E5),
  onSurface: const Color(0xFF000000),
  shadow: const Color(0xFF000000),
);

extension ColorSchemeExtension on ColorScheme {
  Color get primaryOutlined => const Color(0xFF478BFC);
  Color get secondaryOutlined => const Color(0xFF3ECF8E);
  Color get red => const Color(0xFF9E0F0F);
  Color get redOutlined => const Color(0xFFE52C2C);

  Gradient get gradientPrimary => LinearGradient(
        colors: [secondary, primary],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
  Gradient get horizontalPrimaryGradient => LinearGradient(
        colors: [secondary, primary],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );
}

final ThemeData theme = ThemeData(
  useMaterial3: true,
  colorScheme: colorScheme,
  scaffoldBackgroundColor: colorScheme.surface,
  appBarTheme: AppBarTheme(
    backgroundColor: colorScheme.primary,
    elevation: 0,
    surfaceTintColor: colorScheme.primary,
  ),
  dataTableTheme: DataTableThemeData(
    dataTextStyle: const TextStyle(fontSize: 14.0),
    headingTextStyle: TextStyle(fontSize: 14.0, color: colorScheme.onPrimary),
    dataRowColor: WidgetStateProperty.resolveWith((states) => colorScheme.surface),
    headingRowColor: WidgetStateProperty.resolveWith((states) => colorScheme.primary),
    headingRowHeight: 42,
    dataRowMaxHeight: 42,
    dataRowMinHeight: 42,
    columnSpacing: 10.0,
    decoration: BoxDecoration(
      border: Border.all(color: colorScheme.primaryContainer),
      boxShadow: null,
    ),
    checkboxHorizontalMargin: 0,
    horizontalMargin: 0,
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) => colorScheme.tertiaryContainer),
    side: BorderSide(color: colorScheme.outline),
    checkColor: WidgetStateProperty.resolveWith((states) => colorScheme.secondary),
  ),
  textTheme: TextTheme(
    titleLarge: const TextStyle(fontSize: 32.0),
    titleMedium: const TextStyle(fontSize: 24.0),
    titleSmall: TextStyle(fontSize: 20.0, color: colorScheme.tertiary),
    labelLarge: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    labelMedium: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
    labelSmall: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
    bodyLarge: const TextStyle(fontSize: 16.0),
    bodyMedium: const TextStyle(fontSize: 14.0),
    bodySmall: const TextStyle(fontSize: 12.0),
    headlineLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: colorScheme.tertiary),
    headlineMedium: const TextStyle(fontSize: 14.0),
    headlineSmall: const TextStyle(fontSize: 12.0),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: colorScheme.secondary,
    inactiveTrackColor: colorScheme.secondary,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
    trackHeight: 0.5,
  ),
  searchBarTheme: SearchBarThemeData(
    constraints: const BoxConstraints(
      minHeight: 34,
      maxWidth: double.infinity,
    ),
    padding: WidgetStateProperty.all(
      kPaddingAppSmall.copyWith(top: 0, bottom: 0),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        side: BorderSide(color: colorScheme.outline),
        borderRadius: BorderRadius.circular(kRadiusCornerOutside),
      ),
    ),
    side: WidgetStateProperty.all(BorderSide(color: colorScheme.outline)),
    backgroundColor: WidgetStateProperty.all(colorScheme.tertiary.withOpacity(0.05)),
    surfaceTintColor: WidgetStateProperty.all(colorScheme.tertiary.withOpacity(0.05)),
    overlayColor: WidgetStateProperty.all(colorScheme.tertiary.withOpacity(0.1)),
    shadowColor: WidgetStateProperty.all(colorScheme.shadow),
    hintStyle: WidgetStateProperty.all(
      TextStyle(color: colorScheme.inversePrimary.withOpacity(0.4)),
    ),
    elevation: WidgetStateProperty.all(0),
  ),
  searchViewTheme: SearchViewThemeData(
    backgroundColor: colorScheme.surface,
    surfaceTintColor: colorScheme.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kRadiusCornerOutside),
      side: BorderSide(color: colorScheme.outline),
    ),
    elevation: 2,
  ),
  drawerTheme: DrawerThemeData(
    backgroundColor: colorScheme.surface,
    surfaceTintColor: colorScheme.surface,
    endShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kRadiusCornerOutside),
      side: BorderSide(color: colorScheme.outlineVariant, width: 2),
    ),
    elevation: 4,
  ),
  cardTheme: const CardTheme(
    color: Colors.white,
    surfaceTintColor: Colors.transparent,
    elevation: 4,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white, width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(kRadiusCornerOutside),
      ),
    ),
  ),
  dividerTheme: DividerThemeData(
    space: 0,
    thickness: 1,
    color: colorScheme.outline.withOpacity(0.2),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.outline),
      foregroundColor: WidgetStateProperty.all(colorScheme.onPrimary),
      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 12)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerOutside),
        ),
      ),
      fixedSize: WidgetStateProperty.all(const Size.fromHeight(32)),
      iconSize: WidgetStateProperty.all(14.0),
      textStyle: WidgetStateProperty.all(
        const TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
      ),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      foregroundColor: WidgetStateProperty.all(colorScheme.secondary),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
        ),
      ),
      iconSize: WidgetStateProperty.all(14.0),
    ),
  ),
  iconTheme: IconThemeData(
    color: colorScheme.secondary,
    size: 24,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(colorScheme.inversePrimary),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
        ),
      ),
      textStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    iconColor: colorScheme.onSurface,
    fillColor: colorScheme.tertiary.withOpacity(0.05),
    activeIndicatorBorder: BorderSide(color: colorScheme.secondary),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerOutside)),
      borderSide: BorderSide(color: colorScheme.outline),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerOutside)),
      borderSide: BorderSide(color: colorScheme.tertiary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerOutside)),
      borderSide: BorderSide(color: colorScheme.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerOutside)),
      borderSide: BorderSide(color: colorScheme.error),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerOutside)),
      borderSide: BorderSide(color: colorScheme.outline),
    ),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(kRadiusCornerOutside)),
      borderSide: BorderSide(color: colorScheme.outlineVariant),
    ),
    contentPadding: kPaddingAppSmall,
    hintStyle: TextStyle(
      fontSize: 14,
      color: colorScheme.inversePrimary.withOpacity(0.4),
    ),
    labelStyle: TextStyle(
      fontSize: 14,
      color: colorScheme.inversePrimary.withOpacity(0.4),
    ),
    helperStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: colorScheme.inversePrimary.withOpacity(0.4),
    ),
    errorStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: colorScheme.error,
    ),
  ),
  timePickerTheme: TimePickerThemeData(
    backgroundColor: colorScheme.primaryContainer,
    dialBackgroundColor: colorScheme.primaryContainer,
  ),
  disabledColor: colorScheme.outline,
  cupertinoOverrideTheme: CupertinoThemeData(
    barBackgroundColor: colorScheme.secondaryContainer,
    primaryColor: colorScheme.primaryContainer,
    scaffoldBackgroundColor: colorScheme.primaryContainer,
    primaryContrastingColor: colorScheme.primaryContainer,
    applyThemeToAll: true,
    brightness: Brightness.light,
    textTheme: CupertinoTextThemeData(
      primaryColor: colorScheme.primary,
      dateTimePickerTextStyle: TextStyle(color: colorScheme.onError),
    ),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.transparent, elevation: 0),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    elevation: 0,
    selectedItemColor: colorScheme.primary,
    unselectedItemColor: colorScheme.secondary,
  ),
  dialogTheme: DialogTheme(
    elevation: 2,
    backgroundColor: colorScheme.surface,
    surfaceTintColor: colorScheme.surface,
    barrierColor: colorScheme.primary.withOpacity(0.8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kRadiusCornerOutside),
      side: BorderSide(color: colorScheme.outlineVariant),
    ),
    insetPadding: kPaddingAppMedium,
    titleTextStyle: TextStyle(
      color: colorScheme.tertiary,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    contentTextStyle: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    actionsPadding: const EdgeInsets.all(12),
  ),
  datePickerTheme: DatePickerThemeData(
    backgroundColor: colorScheme.surface,
    surfaceTintColor: colorScheme.surface,
    headerForegroundColor: colorScheme.tertiary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kRadiusCornerOutside),
      side: BorderSide(color: colorScheme.outlineVariant),
    ),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.secondary),
      foregroundColor: WidgetStateProperty.all(colorScheme.onPrimary),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerOutside),
        ),
      ),
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.tertiary),
      padding: WidgetStateProperty.all(kPaddingApp),
      elevation: WidgetStateProperty.all(4),
      surfaceTintColor: WidgetStateProperty.all(colorScheme.tertiary),
      visualDensity: VisualDensity.comfortable,
    ),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: colorScheme.secondary,
  ),
  cardColor: colorScheme.surface,
);
