import 'package:flutter/widgets.dart';

/// Corner-radius scale.
///
/// Exposes both `double` values (for math / `Radius.circular`) and
/// pre-built `BorderRadius` shortcuts to keep widget code terse.
abstract final class AppRadius {
  AppRadius._();

  /// 4 px — tight chips, tags.
  static const double xs = 4;

  /// 8 px — inputs, small buttons.
  static const double sm = 8;

  /// 12 px — cards, list tiles.
  static const double md = 12;

  /// 16 px — feature cards, dialogs.
  static const double lg = 16;

  /// 24 px — bottom sheets, large containers.
  static const double xl = 24;

  /// 999 px — pill shapes, fully rounded badges/buttons.
  static const double pill = 999;

  static const BorderRadius allXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius allSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius allMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius allLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius allXl = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius allPill = BorderRadius.all(Radius.circular(pill));
}
