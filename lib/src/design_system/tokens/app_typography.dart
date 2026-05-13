import 'package:devlingo/src/design_system/tokens/app_colors.dart';
import 'package:flutter/widgets.dart';

/// Typographic scale.
///
/// Two families are embedded as static (non-variable) fonts:
///   * [fontFamilyDisplay] (Lato) — UI, headings, body. Humanist sans-serif,
///     warm/friendly tone. Available weights: 300, 400, 700, 900.
///   * [fontFamilyMono]    (JetBrains Mono) — code snippets, inline tokens.
///     Variable font, full weight axis.
///
/// Every style is colored with [AppColors.textPrimary] by default; pages can
/// `.copyWith(color: ...)` for secondary/muted variants.
abstract final class AppTypography {
  AppTypography._();

  static const String fontFamilyDisplay = 'Lato';
  static const String fontFamilyMono = 'JetBrainsMono';

  // ---------------------------------------------------------------------------
  // Display — hero/marketing text
  // ---------------------------------------------------------------------------

  static const TextStyle displayLg = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 36,
    fontWeight: FontWeight.w900,
    height: 1.15,
    letterSpacing: -0.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle displayMd = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 30,
    fontWeight: FontWeight.w900,
    height: 1.2,
    letterSpacing: -0.4,
    color: AppColors.textPrimary,
  );

  static const TextStyle displaySm = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.25,
    letterSpacing: -0.3,
    color: AppColors.textPrimary,
  );

  // ---------------------------------------------------------------------------
  // Heading — section titles
  // ---------------------------------------------------------------------------

  static const TextStyle headingLg = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.3,
    letterSpacing: -0.2,
    color: AppColors.textPrimary,
  );

  static const TextStyle headingMd = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.35,
    letterSpacing: -0.1,
    color: AppColors.textPrimary,
  );

  static const TextStyle headingSm = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.4,
    color: AppColors.textPrimary,
  );

  // ---------------------------------------------------------------------------
  // Body — paragraphs, list content
  // ---------------------------------------------------------------------------

  static const TextStyle bodyLg = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMd = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySm = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.45,
    color: AppColors.textSecondary,
  );

  // ---------------------------------------------------------------------------
  // Label & caption — UI affordances
  // ---------------------------------------------------------------------------

  /// Button labels, tag chips.
  static const TextStyle label = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0.2,
    color: AppColors.textPrimary,
  );

  /// Smaller affordances: form labels, badge text.
  static const TextStyle labelSm = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0.3,
    color: AppColors.textSecondary,
  );

  /// Timestamps, hints, footnotes.
  static const TextStyle caption = TextStyle(
    fontFamily: fontFamilyDisplay,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: 0.1,
    color: AppColors.textMuted,
  );

  // ---------------------------------------------------------------------------
  // Code — JetBrains Mono, for snippets and inline tokens
  // ---------------------------------------------------------------------------

  static const TextStyle codeLg = TextStyle(
    fontFamily: fontFamilyMono,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.55,
    color: AppColors.textPrimary,
  );

  static const TextStyle codeMd = TextStyle(
    fontFamily: fontFamilyMono,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle codeSm = TextStyle(
    fontFamily: fontFamilyMono,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.45,
    color: AppColors.textSecondary,
  );
}
