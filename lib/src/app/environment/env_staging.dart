import 'package:devlingo/src/app/environment/env.dart';

class EnvStaging implements Env {
  @override
  String get supabaseUrl =>
      const String.fromEnvironment('SUPABASE_URL_STAGING');

  @override
  String get supabaseAnonKey =>
      const String.fromEnvironment('SUPABASE_ANON_KEY_STAGING');

  @override
  String get appName => 'DevLingo (staging)';

  @override
  bool get enableLogs => true;
}
