import 'package:devlingo/src/modules/_template/infrastructure/datasources/i_template_local_datasource.dart';
import 'package:devlingo/src/modules/_template/infrastructure/dtos/template_dto.dart';
import 'package:injectable/injectable.dart';

/// In-memory stand-in until a Drift table exists for templates.
///
/// Demonstrates the **local data source** role: cheap reads/writes,
/// no `Either` here — failures surface as thrown exceptions only.
@LazySingleton(as: ITemplateLocalDataSource)
class TemplateLocalDataSource implements ITemplateLocalDataSource {
  final Map<String, TemplateDto> _store = {};

  @override
  Future<TemplateDto?> getById(String id) async => _store[id];

  @override
  Future<List<TemplateDto>> getAll() async =>
      List.unmodifiable(_store.values.toList());

  @override
  Future<void> save(TemplateDto dto) async {
    _store[dto.id] = dto;
  }

  @override
  Future<void> delete(String id) async {
    _store.remove(id);
  }
}
