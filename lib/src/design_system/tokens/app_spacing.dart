/// Spacing scale based on a 4/8pt grid.
///
/// Use these constants for `padding`, `margin`, `SizedBox`, and gaps in
/// `Flex` widgets. Never hardcode pixel values in widgets.
///
/// Scale: each step roughly doubles, giving predictable vertical rhythm.
abstract final class AppSpacing {
  AppSpacing._();

  /// 4 px — hairline spacing (icon-to-text, dense rows).
  static const double xs = 4;

  /// 8 px — tight spacing inside a component.
  static const double sm = 8;

  /// 12 px — between related items.
  static const double smPlus = 12;

  /// 16 px — default padding inside cards/screens.
  static const double md = 16;

  /// 24 px — section padding.
  static const double lg = 24;

  /// 32 px — large gaps between sections.
  static const double xl = 32;

  /// 48 px — page-level breathing room.
  static const double xxl = 48;

  /// 64 px — hero spacing (splash, empty states).
  static const double xxxl = 64;
}
