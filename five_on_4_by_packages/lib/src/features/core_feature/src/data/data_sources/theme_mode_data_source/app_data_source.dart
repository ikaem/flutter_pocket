import 'package:five_on_4_by_packages/src/features/core_feature/src/data/data_sources/theme_mode_data_source/data_source.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/data/data_sources/theme_mode_data_source/data_source.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/enums/theme_mode_preference.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/libraries.dart';

class ThemeModeAppDataSource implements ThemeModeDataSource {
// TODO test
  static const themeModeKey = "theme-mode";

  const ThemeModeAppDataSource({
    required this.keyValueStorage,
  });

  final KeyValueStorage keyValueStorage;

  @override
  Future<ThemeModePreference> getThemeMode() async {
    final String? mode = await keyValueStorage.getStringValue(themeModeKey);

    if (mode == null) return ThemeModePreference.useSystem;

    final ThemeModePreference storedMode =
        ThemeModePreference.values.byName(mode);

    return storedMode;
  }

  @override
  Future<void> saveThemeMode(ThemeModePreference mode) async {
    await keyValueStorage.setStringValue(themeModeKey, mode.name);
  }
}
