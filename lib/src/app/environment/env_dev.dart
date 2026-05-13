import 'package:devlingo/src/app/environment/env.dart';

class EnvDev implements Env {
  @override
  String get supabaseUrl =>
      const String.fromEnvironment('SUPABASE_URL_DEV');

  @override
  String get supabaseAnonKey =>
      const String.fromEnvironment('SUPABASE_ANON_KEY_DEV');

  @override
  String get appName => 'DevLingo (dev)';

  @override
  bool get enableLogs => true;
}
