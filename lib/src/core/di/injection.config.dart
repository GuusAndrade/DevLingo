// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:devlingo/src/app/environment/env.dart' as _i1035;
import 'package:devlingo/src/core/di/register_module.dart' as _i1017;
import 'package:devlingo/src/core/network/connectivity_service.dart' as _i1015;
import 'package:devlingo/src/core/storage/app_database.dart' as _i386;
import 'package:devlingo/src/core/supabase/supabase_service.dart' as _i963;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.singleton<_i386.AppDatabase>(() => _i386.AppDatabase());
    gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i1035.Env>(
      () => registerModule.envDev,
      registerFor: {_dev},
    );
    gh.singleton<_i963.SupabaseService>(
      () => _i963.SupabaseService(gh<_i1035.Env>()),
    );
    gh.lazySingleton<_i1035.Env>(
      () => registerModule.envProd,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i1015.ConnectivityService>(
      () => _i1015.ConnectivityService(gh<_i895.Connectivity>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i1017.RegisterModule {}
