// note that settings repositroy needs an explicit sharedPreferences argument
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/dependency_overridden_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  SettingsRepository(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  // now we have sync read
  bool checkIsOnboardingComplete() {
    return sharedPreferences.getBool("isOnboardingComplete") ?? false;
  }

  // async write - always seems that
  Future<void> setIsOnboardingComplete(bool isComplete) async {
    await sharedPreferences.setBool("isOnboardingComplete", isComplete);
  }
}

// this is with ref passed in
class SettingsRepositoryWithRefPassedIn {
  SettingsRepositoryWithRefPassedIn(this.ref);

  final Ref ref;

  // now we have sync read
  bool checkIsOnboardingComplete() {
    final SharedPreferences sharedPreferences =
        ref.read(sharedPreferencesProvider);
    return sharedPreferences.getBool("isOnboardingComplete") ?? false;
  }

  // async write - always seems that
  Future<void> setIsOnboardingComplete(bool isComplete) async {
    final SharedPreferences sharedPreferences =
        ref.read(sharedPreferencesProvider);
    await sharedPreferences.setBool("isOnboardingComplete", isComplete);
  }
}
