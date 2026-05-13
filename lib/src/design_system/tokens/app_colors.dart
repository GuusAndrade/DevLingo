import 'package:flutter/painting.dart';

/// Dark-first color palette.
///
/// Inspired by modern dev tools (Linear/Vercel): deep navy backgrounds,
/// vibrant cyan brand, and six accent hues for category cards.
///
/// Names are semantic (`background`, `textPrimary`, `border`) so widgets
/// describe intent — not raw hex.
abstract final class AppColors {
  AppColors._();

  // ---------------------------------------------------------------------------
  // Backgrounds (darkest -> lightest tier)
  // ---------------------------------------------------------------------------

  /// Root scaffold background.
  static const Color background = Color(0xFF0A0E1A);

  /// One tier up — sections, app bar.
  static const Color surface = Color(0xFF0F1626);

  /// Cards, modals, elevated panels.
  static const Color surfaceElevated = Color(0xFF161E33);

  /// Hover / pressed states for tappable surfaces.
  static const Color surfaceHover = Color(0xFF1E2842);

  // ---------------------------------------------------------------------------
  // Borders & dividers
  // ---------------------------------------------------------------------------

  static const Color borderSubtle = Color(0xFF162032);
  static const Color border = Color(0xFF1F2A44);
  static const Color borderStrong = Color(0xFF2A3759);

  // ---------------------------------------------------------------------------
  // Text
  // ---------------------------------------------------------------------------

  /// Default text on dark backgrounds (almost white, slightly cool).
  static const Color textPrimary = Color(0xFFF1F5FB);

  /// Secondary copy, descriptions.
  static const Color textSecondary = Color(0xFFA8B2C7);

  /// Hints, metadata, timestamps.
  static const Color textMuted = Color(0xFF6B7691);

  /// Disabled / placeholder text.
  static const Color textDisabled = Color(0xFF3F4860);

  /// Text rendered on top of light/colored surfaces (e.g. primary button).
  static const Color textInverse = Color(0xFF0A0E1A);

  // ---------------------------------------------------------------------------
  // Brand
  // ---------------------------------------------------------------------------

  /// Primary brand color — cyan, used for CTAs and focus.
  static const Color primary = Color(0xFF22D3EE);

  /// Pressed / hovered state of primary.
  static const Color primaryHover = Color(0xFF06B6D4);

  /// Muted primary for backgrounds, tinted surfaces.
  static const Color primaryMuted = Color(0xFF0E7490);

  /// Very subtle primary tint, for hover backgrounds.
  static const Color primarySoft = Color(0x1A22D3EE);

  // ---------------------------------------------------------------------------
  // Semantic status
  // ---------------------------------------------------------------------------

  static const Color success = Color(0xFF34D399);
  static const Color warning = Color(0xFFFBBF24);
  static const Color error = Color(0xFFF87171);
  static const Color info = Color(0xFF60A5FA);

  // ---------------------------------------------------------------------------
  // Category accents — pastel/soft palette (Duolingo-style: each topic
  // owns its color, but soft tones to feel warm and welcoming).
  // ---------------------------------------------------------------------------

  /// Warm coral — Scrum, communication topics.
  static const Color accentCoral = Color(0xFFFC946E);

  /// Sunlit peach — onboarding, beginner flows.
  static const Color accentPeach = Color(0xFFFFD996);

  /// Soft mint — success states, completed lessons.
  static const Color accentMint = Color(0xFF87C76F);

  /// Pale teal — code review, debugging.
  static const Color accentTeal = Color(0xFF8CE0DF);

  /// Lavender — architecture, abstract concepts.
  static const Color accentLavender = Color(0xFFE7B2EF);

  /// Periwinkle blue — deployment, infrastructure.
  static const Color accentPeriwinkle = Color(0xFF899FFE);

  /// Candy pink — fun, gamification (XP, streak).
  static const Color accentPink = Color(0xFFFDA7FF);

  // ---------------------------------------------------------------------------
  // Utility
  // ---------------------------------------------------------------------------

  /// Pure black, for shadows.
  static const Color shadow = Color(0xFF000000);

  /// Modal scrim overlay (60% black).
  static const Color scrim = Color(0x99000000);

  /// Transparent — convenience constant to avoid magic literals.
  static const Color transparent = Color(0x00000000);
}
