// TODO should this be ever moved into a class?
import 'package:get_it/get_it.dart';
import "package:injectable/injectable.dart";
import 'package:sandbox/src/features/dependecy_injection_get_it_injectable/libraries/get_it/configure_get_it_dependencies/configure_get_it_dependencies.config.dart';

final GetIt dependencyLocator = GetIt.instance;

@InjectableInit(
  initializerName: 'initGetIt',
  asExtension: false,
)
Future<void> configureGetItDependencies() async =>
    await initGetIt(dependencyLocator);
