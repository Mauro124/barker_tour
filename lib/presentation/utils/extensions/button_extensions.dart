import 'package:flutter/material.dart';
import 'package:barker_tour/presentation/utils/theme.dart';

extension TextButtonSchemeExtension on ButtonStyle {
  ButtonStyle get textButtonSecondary => TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.secondary,
      );

  ButtonStyle get textButtonPrimary => TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.primary,
      );

  ButtonStyle get textButtonTertiary => TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.tertiary,
        textStyle: const TextStyle(fontSize: 14),
      );

  ButtonStyle get textButtonTertiarySmall => TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.tertiary,
        textStyle: const TextStyle(fontSize: 12),
        iconColor: colorScheme.tertiary,
        padding: EdgeInsets.zero,
      );

  ButtonStyle get textButtonDanger => TextButton.styleFrom(
        foregroundColor: colorScheme.red,
      );
}

extension ElevatedButtonSchemeExtension on ButtonStyle {
  ButtonStyle get secondary => ElevatedButton.styleFrom(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
          side: BorderSide(
            color: colorScheme.secondaryOutlined,
            width: 1.0,
          ),
        ),
      );

  ButtonStyle get secondarySmall => ElevatedButton.styleFrom(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
        textStyle: const TextStyle(fontSize: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
          side: BorderSide(
            color: colorScheme.secondaryOutlined,
            width: 1.0,
          ),
        ),
      );

  ButtonStyle get primary => ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
          side: BorderSide(
            color: colorScheme.primaryOutlined,
            width: 1.0,
          ),
        ),
      );

  ButtonStyle get tertiary => ElevatedButton.styleFrom(
        backgroundColor: colorScheme.tertiary.withOpacity(0.2),
        surfaceTintColor: colorScheme.tertiary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
          side: BorderSide(
            color: colorScheme.outline,
            width: 1.0,
          ),
        ),
      );

  ButtonStyle get danger => ElevatedButton.styleFrom(
        backgroundColor: colorScheme.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusCornerInside),
          side: BorderSide(
            color: colorScheme.redOutlined,
            width: 1.0,
          ),
        ),
      );
}
