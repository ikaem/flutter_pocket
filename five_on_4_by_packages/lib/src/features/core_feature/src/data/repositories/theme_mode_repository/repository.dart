import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/enums/theme_mode_preference.dart';
import 'package:rxdart/rxdart.dart';

class ThemeModeRepository {
  // TODO possibly we need some data source, or api here

  final BehaviorSubject<ThemeModePreference> _themeModePreferenceSubject =
      BehaviorSubject();
}
