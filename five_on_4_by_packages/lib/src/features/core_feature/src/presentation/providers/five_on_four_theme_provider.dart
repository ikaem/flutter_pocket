import 'package:flutter/material.dart';

class FiveOnFourThemeProvider extends InheritedWidget {
  const FiveOnFourThemeProvider({
    required this.lightTheme,
    required this.darkTheme,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

// TODO these will be actual themes later
  final String lightTheme;
  final String darkTheme;

  @override
  bool updateShouldNotify(covariant FiveOnFourThemeProvider oldWidget) {
    // TODO: implement updateShouldNotify
    if (oldWidget.lightTheme == lightTheme) return false;
    if (oldWidget.darkTheme == darkTheme) return false;

    return true;
  }

  // TODO also make here of function to be able tp get the provider data from here , based on
  // https://github.dev/kodecocodes/rwf-materials/blob/c61b8fd4ddad8fa96c3eb8dd096f1be7363d9c39/01-setting-up-your-environment/projects/final/packages/component_library/lib/src/theme/wonder_theme.dart#L14
}
