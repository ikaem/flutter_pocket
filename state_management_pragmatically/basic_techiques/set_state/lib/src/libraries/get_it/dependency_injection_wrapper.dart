
import 'package:get_it/get_it.dart';

abstract class DependencyInjectionWrapper {
  static GetIt getIt = GetIt.instance;

  static void registerSingleton<T extends Object>(
    T instance, {
    required bool signalsReady,
  }) {
    getIt.registerSingleton<T>(
      instance,
      signalsReady: signalsReady,
    );
  }

  static void signalReady<T>(T instance) {
    getIt.signalReady(instance);
  }

  static Future<void> checkIsReady<T extends Object>() async {
    await getIt.isReady<T>();
  }

  static Future<void> checkIsAllReady() async {
    await getIt.allReady();
  }

  static T getSingleton<T extends Object>() {
    final T singleton = getIt<T>();

    return singleton;
  }
}
