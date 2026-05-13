import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_failure.freezed.dart';

@freezed
sealed class AppFailure with _$AppFailure {
  const factory AppFailure.network({required String message}) = NetworkFailure;
  const factory AppFailure.server({required String message, int? statusCode}) =
      ServerFailure;
  const factory AppFailure.unauthorized({
    required String message,
    int? statusCode,
  }) = UnauthorizedFailure;
  const factory AppFailure.notFound({required String message}) =
      NotFoundFailure;
  const factory AppFailure.cache({required String message}) = CacheFailure;
  const factory AppFailure.unknown({required String message}) = UnknownFailure;
}
