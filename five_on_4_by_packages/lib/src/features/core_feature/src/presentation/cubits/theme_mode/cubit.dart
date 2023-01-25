import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/enums/theme_mode_preference.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/use_cases/theme_mode_use_cases.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/presentation/cubits/theme_mode/cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeCubit extends Cubit<ThemeModeCubitState> {
  ThemeModeCubit({
    required this.themeModeUseCases,
  }) : super(const ThemeModeCubitState()) {
    _initializeThemeModeCubit();
  }

  final ThemeModeUseCases themeModeUseCases;

  Future<void> changeThemeMode(ThemeModePreference mode) async {
    await themeModeUseCases.saveThemeMode(mode);
  }

  void _initializeThemeModeCubit() {
    themeModeUseCases.themeModeStreamSubscription.onData(_onThemeModeData);

    themeModeUseCases.themeModeStreamSubscription.onError(_onThemeModeError);
  }

  void _onThemeModeData(ThemeModePreference mode) {
    if (mode == ThemeModePreference.useDark) {
      emit(ThemeModeCubitStateDark());
      return;
    }

    if (mode == ThemeModePreference.useLight) {
      emit(ThemeModeCubitStateLight());
      return;
    }

    emit(ThemeModeCubitStateSystem());
  }

  void _onThemeModeError(Object error) {
    emit(ThemeModeCubitStateSystem());
  }

  @override
  Future<void> close() async {
    await themeModeUseCases.closeThemeModeStreamSubscription();
    await super.close();
  }
}
