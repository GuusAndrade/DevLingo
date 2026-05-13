import 'dart:async';

import 'package:devlingo/src/core/routing/app_routes.dart';
import 'package:devlingo/src/core/routing/guards/auth_guard.dart';
import 'package:devlingo/src/core/supabase/supabase_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

/// Central router. Owns the `GoRouter` instance plus the `Listenable` that
/// triggers redirect re-evaluation when the auth state changes.
@lazySingleton
class AppRouter {
  AppRouter(this._authGuard, this._supabase);

  final AuthGuard _authGuard;
  final SupabaseService _supabase;

  late final GoRouter config = GoRouter(
    initialLocation: AppRoutes.splashPath,
    refreshListenable: _GoRouterRefreshStream(_supabase.authStateChanges),
    redirect: _authGuard.redirect,
    routes: [
      GoRoute(
        path: AppRoutes.splashPath,
        name: AppRoutes.splashName,
        builder: (_, _) => const _PlaceholderPage(title: 'Splash'),
      ),
      GoRoute(
        path: AppRoutes.signInPath,
        name: AppRoutes.signInName,
        builder: (_, _) => const _PlaceholderPage(title: 'Sign In'),
      ),
      GoRoute(
        path: AppRoutes.homePath,
        name: AppRoutes.homeName,
        builder: (_, _) => const _PlaceholderPage(title: 'Home'),
      ),
    ],
  );
}

/// Adapter that converts a `Stream` into a `Listenable` so `GoRouter` can
/// listen to auth state changes via `refreshListenable`.
class _GoRouterRefreshStream extends ChangeNotifier {
  _GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class _PlaceholderPage extends StatelessWidget {
  const _PlaceholderPage({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title page (placeholder)')),
    );
  }
}
