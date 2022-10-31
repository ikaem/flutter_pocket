// note that this provider depends on sharedPrefetrences provider

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/data/repositories/settings_repository.dart';
import 'package:riverpod_guide/src/providers/dependency_overridden_provider.dart';

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  // we can get non-future shared preferences becuase we setup that provider that way
  final sharedPreferences = ref.watch(sharedPreferencesProvider);

  return SettingsRepository(sharedPreferences);
});

// this is with passing ref
final settingsRepositoryWithRefProvider =
    Provider<SettingsRepositoryWithRefPassedIn>((ref) {
  return SettingsRepositoryWithRefPassedIn(ref);
});
