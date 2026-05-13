import 'package:devlingo/src/design_system/tokens/app_colors.dart';
import 'package:flutter/painting.dart';

/// Elevation shadows and brand glow effects.
///
/// On dark backgrounds shadows must stay subtle — heavy drop-shadows look
/// muddy. We rely on stacked low-opacity black + a faint border on the host
/// widget for the actual elevation perception.
///
/// [primaryGlow] is the special focus glow used for primary CTAs and inputs.
abstract final class AppShadows {
  AppShadows._();

  /// Tiny shadow for chips and small floating elements.
  static const List<BoxShadow> xs = [
    BoxShadow(
      color: Color(0x33000000),
      offset: Offset(0, 1),
      blurRadius: 2,
    ),
  ];

  /// Default card elevation.
  static const List<BoxShadow> sm = [
    BoxShadow(
      color: Color(0x40000000),
      offset: Offset(0, 2),
      blurRadius: 6,
    ),
  ];

  /// Hovered card / dropdown.
  static const List<BoxShadow> md = [
    BoxShadow(
      color: Color(0x4D000000),
      offset: Offset(0, 4),
      blurRadius: 12,
    ),
  ];

  /// Modal / floating dialog.
  static const List<BoxShadow> lg = [
    BoxShadow(
      color: Color(0x66000000),
      offset: Offset(0, 8),
      blurRadius: 24,
    ),
  ];

  /// Cyan focus glow — primary buttons, focused inputs.
  static List<BoxShadow> primaryGlow = [
    BoxShadow(
      color: AppColors.primary.withValues(alpha: 0.35),
      blurRadius: 16,
    ),
  ];
}
