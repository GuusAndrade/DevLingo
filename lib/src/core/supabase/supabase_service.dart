import 'package:devlingo/src/app/environment/env.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Wrapper around the Supabase SDK.
///
/// Call [init] from `bootstrap` before `runApp`.
@singleton
class SupabaseService {
  SupabaseService(this._env);

  final Env _env;

  SupabaseClient get client => Supabase.instance.client;

  GoTrueClient get auth => Supabase.instance.client.auth;

  Stream<AuthState> get authStateChanges =>
      Supabase.instance.client.auth.onAuthStateChange;

  Future<void> init() async {
    await Supabase.initialize(
      url: _env.supabaseUrl,
      anonKey: _env.supabaseAnonKey,
      debug: _env.enableLogs,
    );
  }
}
