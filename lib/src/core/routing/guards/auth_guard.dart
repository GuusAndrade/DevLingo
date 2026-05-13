import 'package:devlingo/src/core/routing/app_routes.dart';
import 'package:devlingo/src/core/supabase/supabase_service.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthGuard {
  AuthGuard(this._supabase);

  final SupabaseService _supabase;

  String? redirect(BuildContext context, GoRouterState state) {
    final isLoggedIn = _supabase.auth.currentSession != null;
    final goingToAuth = state.matchedLocation.startsWith('/auth');

    if (!isLoggedIn && !goingToAuth) return AppRoutes.signInPath;
    if (goingToAuth && isLoggedIn) return AppRoutes.homePath;
    return null;
  }
}
