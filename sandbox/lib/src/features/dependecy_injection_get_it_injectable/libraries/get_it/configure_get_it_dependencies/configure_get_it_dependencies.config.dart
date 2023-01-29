// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sandbox/src/features/dependecy_injection_get_it_injectable/domain/dependencies/app_dependencies.dart'
    as _i4;
import 'package:sandbox/src/libraries/firebase/firebase_core/firebase_core_wrapper.dart'
    as _i3;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appDependencies = _$AppDependencies();
  await gh.factoryAsync<_i3.FirebaseCoreWrapper>(
    () => appDependencies.firebaseCoreWrapper,
    preResolve: true,
  );
  return getIt;
}

class _$AppDependencies extends _i4.AppDependencies {}
