import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:devlingo/src/app/environment/env.dart';
import 'package:devlingo/src/app/environment/env_dev.dart';
import 'package:devlingo/src/app/environment/env_prod.dart';
import 'package:devlingo/src/app/environment/env_staging.dart';
import 'package:injectable/injectable.dart';

/// Provides third-party dependencies that the app does not own, plus the
/// environment-bound `Env` implementation chosen at DI init time.
@module
abstract class RegisterModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @dev
  @lazySingleton
  Env get envDev => EnvDev();

  @Environment('staging')
  @lazySingleton
  Env get envStaging => EnvStaging();

  @prod
  @lazySingleton
  Env get envProd => EnvProd();
}
