import 'package:devlingo/src/core/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// Global service locator. Use `getIt<T>()` to resolve a registered type.
final getIt = GetIt.instance;

/// Registers every `@injectable` / `@singleton` / `@lazySingleton` class
/// discovered at build time. The [environment] picks between `@dev` /
/// `@prod` variants. Call once from `bootstrap` before `runApp`.
@InjectableInit()
Future<void> configureDependencies({required String environment}) async =>
    getIt.init(environment: environment);
