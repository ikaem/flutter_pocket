import 'package:dependency_injection/src/models/app_info.dart';
import 'package:flutter/cupertino.dart';

class InheritedInjection extends InheritedWidget {
  InheritedInjection({Key? key, required Widget child})
      : super(
          key: key,
          child: child,
        );

  final AppInfo _appInfo = AppInfo();

  AppInfo get appInfo => _appInfo;

  static InheritedInjection of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedInjection>()!;
  }

  @override
  bool updateShouldNotify(InheritedInjection oldWidget) {
    return true;
  }
}
