import 'dart:async';

import 'package:five_on_4_by_packages/src/features/core_feature/src/data/repositories/theme_mode_repository/repository.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/enums/theme_mode_preference.dart';

class ThemeModeUseCases {
  ThemeModeUseCases({
    required this.themeModeRepository,
  });

  final ThemeModeRepository themeModeRepository;

  late final StreamSubscription<ThemeModePreference>
      _themeModeStreamSubscription =
      themeModeRepository.getThemeMode().listen((event) => event);

  StreamSubscription<ThemeModePreference> get themeModeStreamSubscription =>
      _themeModeStreamSubscription;

  Future<void> saveThemeMode(ThemeModePreference mode) async {
    await themeModeRepository.saveThemeMode(mode);
  }

  Future<void> closeThemeModeStreamSubscription() async {
    await _themeModeStreamSubscription.cancel();
  }
}
