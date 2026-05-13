// UseCase is a marker contract registered via DI and used as a
// semantic anchor across the codebase. A typedef would lose the
// implements-based readability and DI registration ergonomics.
// ignore_for_file: one_member_abstracts

import 'package:devlingo/src/core/errors/app_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<Output, Input> {
  Future<Either<AppFailure, Output>> call(Input input);
}

class NoParams {
  const NoParams();
}
