import 'package:devlingo/src/core/errors/app_failure.dart';
import 'package:devlingo/src/modules/_template/domain/entities/template_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_state.freezed.dart';

/// UI states for the `_template/` reference screen.
///
/// Modeled as a sealed union so [BlocBuilder] can use exhaustive `when` /
/// `map` without nullable flags.
@freezed
sealed class TemplateState with _$TemplateState {
  const factory TemplateState.initial() = _Initial;

  const factory TemplateState.loading() = _Loading;

  const factory TemplateState.loaded({required Template template}) = _Loaded;

  const factory TemplateState.failure({required AppFailure failure}) = _Failure;
}
