import 'package:devlingo/src/app/bootstrap.dart';
import 'package:devlingo/src/app/environment/env_dev.dart';

Future<void> main() async {
  await bootstrap(env: EnvDev());
}
