import 'package:devlingo/src/modules/_template/domain/usecases/get_template_usecase.dart';
import 'package:devlingo/src/modules/_template/presentation/blocs/template_state.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class TemplateCubit extends Cubit<TemplateState> {
  TemplateCubit(this._getTemplateById) : super(const TemplateState.initial());

  final GetTemplateByIdUseCase _getTemplateById;

  Future<void> loadById(String id) async {
    emit(const TemplateState.loading());

    final result = await _getTemplateById(id);

    result.fold(
      (failure) => emit(TemplateState.failure(failure: failure)),

      (template) => emit(TemplateState.loaded(template: template)),
    );
  }
}
