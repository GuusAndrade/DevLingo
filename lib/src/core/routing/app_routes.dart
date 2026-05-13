/// Single source of truth for every route path and name in the app.
///
/// Use the path constants with `context.go(...)` / `GoRouter.of(context).go(...)`
/// and the name constants with `context.goNamed(...)`. Prefer named navigation
/// in feature code so the strings live here only.
abstract final class AppRoutes {
  static const String splashPath = '/';
  static const String splashName = 'splash';

  static const String signInPath = '/auth/sign-in';
  static const String signInName = 'sign-in';

  static const String homePath = '/home';
  static const String homeName = 'home';
}
