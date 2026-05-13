/// Contract for an environment configuration.
///
/// Each concrete implementation (dev, prod, staging...) provides the values
/// the app needs at runtime. Switching environments is just a matter of
/// instantiating the right `Env` in the entry point (`main.dart` /
/// `main_dev.dart` / `main_prod.dart`).
abstract interface class Env {
  String get supabaseUrl;
  String get supabaseAnonKey;
  String get appName;
  bool get enableLogs;
}
