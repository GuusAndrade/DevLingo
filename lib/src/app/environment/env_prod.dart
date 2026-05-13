import 'package:devlingo/src/app/environment/env.dart';

class EnvProd implements Env {
  @override
  String get supabaseUrl =>
      const String.fromEnvironment('SUPABASE_URL_PROD');

  @override
  String get supabaseAnonKey =>
      const String.fromEnvironment('SUPABASE_ANON_KEY_PROD');

  @override
  String get appName => 'DevLingo';

  @override
  bool get enableLogs => false;
}
