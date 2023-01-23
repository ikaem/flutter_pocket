// TODO app theme should be defined here fully - and reused accross the app

// https://vscode.dev/github.com/kodecocodes/rwf-materials/blob/c61b8fd4ddad8fa96c3eb8dd096f1be7363d9c39/10-dynamic-theming-and-dark-mode/projects/final/packages/component_library/lib/src/theme/wonder_theme_data.dart#L8

import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:flutter/material.dart';

const _dividerThemeData = DividerThemeData(
  space: 0,
);

class FiveOnFourThemeLightData extends FiveOnFourThemeData {
  @override
  // TODO: implement materialThemeData
  ThemeData get materialThemeData => ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.black.toMaterialColor(),
        dividerTheme: _dividerThemeData,
      );

  @override
  // TODO: implement roundedChoiceChipBackgroundColor
  Color get roundedChoiceChipBackgroundColor => Colors.white;

  @override
  // TODO: implement votedButtonColor
  Color get votedButtonColor => Colors.black;
}

class FiveOnFourThemeDarkData extends FiveOnFourThemeData {
  @override
  // TODO: implement materialThemeData
  ThemeData get materialThemeData => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.white.toMaterialColor(),
        dividerTheme: _dividerThemeData,
      );

  @override
  // TODO: implement roundedChoiceChipBackgroundColor
  Color get roundedChoiceChipBackgroundColor => Colors.black;

  @override
  // TODO: implement votedButtonColor
  Color get votedButtonColor => Colors.white;
}

abstract class FiveOnFourThemeData {
  ThemeData get materialThemeData;

  double screenMargin = Spacing.mediumLarge;
  double gridSpacing = Spacing.mediumLarge;

  Color get roundedChoiceChipBackgroundColor;
  Color get votedButtonColor;

  TextStyle someSpecialTextStyle = const TextStyle(
    fontFamily: "Montserrat",
  );
}

extension on Color {
  // ok, this creates a map of these - with opacity is on the color itself
  Map<int, Color> _toSwatch() => {
        50: withOpacity(0.1),
        100: withOpacity(0.2),
        200: withOpacity(0.3),
        300: withOpacity(0.4),
        400: withOpacity(0.5),
        500: withOpacity(0.6),
        600: withOpacity(0.7),
        700: withOpacity(0.8),
        800: withOpacity(0.9),
        900: this,
      };

// ok, this returns materual color - what is materual color
// value here is int - i guess 50, 100 and so on
// and to swatch will return this map
  MaterialColor toMaterialColor() => MaterialColor(value, _toSwatch());
}
