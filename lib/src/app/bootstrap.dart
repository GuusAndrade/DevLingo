import 'dart:async';
import 'dart:developer';

import 'package:devlingo/src/app/app_widget.dart';
import 'package:devlingo/src/core/di/injection.dart';
import 'package:devlingo/src/core/supabase/supabase_service.dart';
import 'package:flutter/material.dart';

/// Single entry point used by every flavor (`main.dart`, `main_dev.dart`, etc.).
///
/// [environment] is forwarded to `injectable` so the matching `Env`
/// implementation (`@dev` / `@prod`) is registered in `getIt`.
Future<void> bootstrap({required String environment}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await runZonedGuarded(
    () async {
      await configureDependencies(environment: environment);
      await getIt<SupabaseService>().init();

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
