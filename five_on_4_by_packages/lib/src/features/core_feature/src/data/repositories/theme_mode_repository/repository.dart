import 'package:five_on_4_by_packages/src/features/core_feature/src/data/data_sources/theme_mode_data_source/data_source.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/enums/theme_mode_preference.dart';
import 'package:rxdart/rxdart.dart';

class ThemeModeRepository {
  // TODO possibly we need some data source, or api here

  ThemeModeRepository({
    required this.themeModeDataSource,
  });

  final ThemeModeDataSource themeModeDataSource;

  final BehaviorSubject<ThemeModePreference> _themeModePreferenceSubject =
      BehaviorSubject();

  Future<void> saveThemeMode(ThemeModePreference mode) async {
    await themeModeDataSource.saveThemeMode(mode);
    _themeModePreferenceSubject.add(mode);
  }

// TODO THIS is good becauasae
  Stream<ThemeModePreference> getThemeMode() async* {
    final bool hasSubjectValue = _themeModePreferenceSubject.hasValue;

    if (!hasSubjectValue) {
      // we want to get value
      final ThemeModePreference mode = await themeModeDataSource.getThemeMode();
      _themeModePreferenceSubject.add(mode);
    }

// CANNOT RETURN - HAVE TO YIELD
    yield* _themeModePreferenceSubject.stream;
  }

  Stream<ThemeModePreference> get themeModeStream =>
      _themeModePreferenceSubject.stream;
}
