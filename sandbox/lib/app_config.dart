// this is used for flavoring explanation

import 'package:flutter/widgets.dart';

enum Environment {
  dev,
  prod,
}

class AppConfig extends InheritedWidget {
  const AppConfig({
    super.key,
    required super.child,
    required this.environment,
    required this.appTitle,
  });

  final Environment environment;
  final String appTitle;

  static AppConfig of(BuildContext context) {
    final AppConfig config =
        context.dependOnInheritedWidgetOfExactType<AppConfig>()!;

    return config;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
