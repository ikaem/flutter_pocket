import 'package:flutter/material.dart';

class FiveOnFourThemeProvider extends InheritedWidget {
  const FiveOnFourThemeProvider({
    required this.lightTheme,
    required this.darkTheme,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

// TODO these will be actual themes later
  final FiveOnFourThemeData lightTheme;
  final FiveOnFourThemeData darkTheme;

  @override
  bool updateShouldNotify(covariant FiveOnFourThemeProvider oldWidget) {
    // TODO: implement updateShouldNotify
    if (oldWidget.lightTheme == lightTheme) return false;
    if (oldWidget.darkTheme == darkTheme) return false;

    return true;
  }

  static FiveOnFourThemeData of(BuildContext context) {
    final FiveOnFourThemeProvider? inheritedTheme =
        context.dependOnInheritedWidgetOfExactType<FiveOnFourThemeProvider>();

    assert(
        inheritedTheme != null, "No FiveOnFourThemeProvider found in context");

    // TODO get brightness here
    // TODO HOW DOES it know what is the current brightness - and how do we change it
    final Brightness currentBrightness = Theme.of(context).brightness;

    final FiveOnFourThemeData theme = currentBrightness == Brightness.dark
        ? inheritedTheme!.darkTheme
        : inheritedTheme!.lightTheme;

    return theme;
  }

  // TODO also make here of function to be able tp get the provider data from here , based on
  // https://github.dev/kodecocodes/rwf-materials/blob/c61b8fd4ddad8fa96c3eb8dd096f1be7363d9c39/01-setting-up-your-environment/projects/final/packages/component_library/lib/src/theme/wonder_theme.dart#L14
}
