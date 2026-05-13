import 'package:devlingo/src/app/bootstrap.dart';

const _environment = String.fromEnvironment(
  'ENVIRONMENT',
  defaultValue: 'dev',
);

Future<void> main() async {
  await bootstrap(environment: _environment);
}
