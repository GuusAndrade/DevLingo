import 'package:devlingo/src/app/environment/env.dart';
import 'package:devlingo/src/core/di/injection.dart';
import 'package:devlingo/src/core/routing/app_router.dart';
import 'package:devlingo/src/design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: getIt<Env>().appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      routerConfig: getIt<AppRouter>().config,
    );
  }
}
