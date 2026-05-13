import 'package:devlingo/src/design_system/tokens/app_colors.dart';
import 'package:devlingo/src/design_system/tokens/app_radius.dart';
import 'package:devlingo/src/design_system/tokens/app_spacing.dart';
import 'package:devlingo/src/design_system/tokens/app_typography.dart';
import 'package:flutter/material.dart';

/// Assembles the global [ThemeData] from the design tokens.
///
/// The app is dark-first; a light variant can be added later by exposing a
/// `light` getter that mirrors the same structure.
abstract final class AppTheme {
  AppTheme._();

  static ThemeData get dark {
    const colorScheme = _darkColorScheme;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.background,
      canvasColor: AppColors.background,
      splashFactory: InkRipple.splashFactory,
      fontFamily: AppTypography.fontFamilyDisplay,
      textTheme: _textTheme,
      appBarTheme: _appBarTheme,
      cardTheme: _cardTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      filledButtonTheme: _filledButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
      dividerTheme: _dividerTheme,
      iconTheme: const IconThemeData(color: AppColors.textSecondary, size: 20),
      snackBarTheme: _snackBarTheme,
    );
  }

  // ---------------------------------------------------------------------------
  // ColorScheme
  // ---------------------------------------------------------------------------

  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary,
    onPrimary: AppColors.textInverse,
    primaryContainer: AppColors.primaryMuted,
    onPrimaryContainer: AppColors.textPrimary,
    secondary: AppColors.accentLavender,
    onSecondary: AppColors.textInverse,
    secondaryContainer: AppColors.surfaceElevated,
    onSecondaryContainer: AppColors.textPrimary,
    tertiary: AppColors.accentMint,
    onTertiary: AppColors.textInverse,
    error: AppColors.error,
    onError: AppColors.textInverse,
    surface: AppColors.surface,
    onSurface: AppColors.textPrimary,
    surfaceContainerHighest: AppColors.surfaceElevated,
    outline: AppColors.border,
    outlineVariant: AppColors.borderSubtle,
    shadow: AppColors.shadow,
    scrim: AppColors.scrim,
  );

  // ---------------------------------------------------------------------------
  // TextTheme — maps Material slots to our scale
  // ---------------------------------------------------------------------------

  static const TextTheme _textTheme = TextTheme(
    displayLarge: AppTypography.displayLg,
    displayMedium: AppTypography.displayMd,
    displaySmall: AppTypography.displaySm,
    headlineLarge: AppTypography.headingLg,
    headlineMedium: AppTypography.headingMd,
    headlineSmall: AppTypography.headingSm,
    titleLarge: AppTypography.headingMd,
    titleMedium: AppTypography.headingSm,
    titleSmall: AppTypography.label,
    bodyLarge: AppTypography.bodyLg,
    bodyMedium: AppTypography.bodyMd,
    bodySmall: AppTypography.bodySm,
    labelLarge: AppTypography.label,
    labelMedium: AppTypography.labelSm,
    labelSmall: AppTypography.caption,
  );

  // ---------------------------------------------------------------------------
  // Sub-themes
  // ---------------------------------------------------------------------------

  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.background,
    foregroundColor: AppColors.textPrimary,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: false,
    titleTextStyle: AppTypography.headingMd,
    iconTheme: IconThemeData(color: AppColors.textPrimary, size: 22),
  );

  static const CardThemeData _cardTheme = CardThemeData(
    color: AppColors.surfaceElevated,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: AppRadius.allLg,
      side: BorderSide(color: AppColors.border),
    ),
  );

  static final ElevatedButtonThemeData _elevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textInverse,
          disabledBackgroundColor: AppColors.surfaceHover,
          disabledForegroundColor: AppColors.textDisabled,
          textStyle: AppTypography.label,
          elevation: 0,
          minimumSize: const Size(0, 52),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
            vertical: AppSpacing.smPlus,
          ),
          shape: const RoundedRectangleBorder(borderRadius: AppRadius.allPill),
        ),
      );

  static final FilledButtonThemeData _filledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textInverse,
      disabledBackgroundColor: AppColors.surfaceHover,
      disabledForegroundColor: AppColors.textDisabled,
      textStyle: AppTypography.label,
      minimumSize: const Size(0, 52),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xl,
        vertical: AppSpacing.smPlus,
      ),
      shape: const RoundedRectangleBorder(borderRadius: AppRadius.allPill),
    ),
  );

  static final OutlinedButtonThemeData _outlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.textPrimary,
          textStyle: AppTypography.label,
          side: const BorderSide(color: AppColors.borderStrong),
          minimumSize: const Size(0, 52),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
            vertical: AppSpacing.smPlus,
          ),
          shape: const RoundedRectangleBorder(borderRadius: AppRadius.allPill),
        ),
      );

  static final TextButtonThemeData _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      textStyle: AppTypography.label,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      shape: const RoundedRectangleBorder(borderRadius: AppRadius.allPill),
    ),
  );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceElevated,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.smPlus,
        ),
        hintStyle: AppTypography.bodyMd.copyWith(color: AppColors.textMuted),
        labelStyle: AppTypography.labelSm,
        floatingLabelStyle: AppTypography.labelSm.copyWith(
          color: AppColors.primary,
        ),
        errorStyle: AppTypography.caption.copyWith(color: AppColors.error),
        border: const OutlineInputBorder(
          borderRadius: AppRadius.allMd,
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: AppRadius.allMd,
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: AppRadius.allMd,
          borderSide: BorderSide(color: AppColors.primary, width: 1.5),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: AppRadius.allMd,
          borderSide: BorderSide(color: AppColors.error),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: AppRadius.allMd,
          borderSide: BorderSide(color: AppColors.error, width: 1.5),
        ),
      );

  static const DividerThemeData _dividerTheme = DividerThemeData(
    color: AppColors.border,
    thickness: 1,
    space: 1,
  );

  static const SnackBarThemeData _snackBarTheme = SnackBarThemeData(
    backgroundColor: AppColors.surfaceElevated,
    contentTextStyle: AppTypography.bodyMd,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: AppRadius.allMd),
  );
}
