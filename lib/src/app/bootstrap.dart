import 'dart:async';
import 'dart:developer';

import 'package:devlingo/src/app/app_widget.dart';
import 'package:devlingo/src/app/environment/env.dart';
import 'package:flutter/material.dart';

/// Single entry point used by every flavor (`main.dart`, `main_dev.dart`, etc.).
///
/// Centralizes initialization (Supabase, Drift, DI, error handlers) so that
/// `main.dart` stays trivial and the bootstrap stays testable.
Future<void> bootstrap({required Env env}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await runZonedGuarded(
    () async {
      // TODO(devlingo): initialize Supabase, local database (Drift) and DI
      // here once those services exist.

      FlutterError.onError = (details) {
        log(
          details.exceptionAsString(),
          name: 'FlutterError',
          stackTrace: details.stack,
        );
      };

      runApp(const AppWidget());
    },
    (error, stack) {
      log('Uncaught zoned error', error: error, stackTrace: stack);
    },
  );
}
