import 'package:injectable/injectable.dart';
import 'package:sandbox/src/libraries/firebase/firebase_core/firebase_core_wrapper.dart';

@module
abstract class AppDependencies {
  @preResolve
  Future<FirebaseCoreWrapper> get firebaseCoreWrapper =>
      FirebaseCoreWrapper.initialize();
}
