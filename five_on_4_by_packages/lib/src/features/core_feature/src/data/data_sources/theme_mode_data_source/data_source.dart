import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/enums/theme_mode_preference.dart';

abstract class ThemeModeDataSource {
  Future<void> saveThemeMode(ThemeModePreference mode);
  Future<ThemeModePreference> getThemeMode();
}
