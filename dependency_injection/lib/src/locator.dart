import 'package:dependency_injection/src/models/app_info.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // this will always serve same instance
  locator.registerSingleton<AppInfo>(AppInfo());
  // this would serve new isntance on every call of get on this type
  // locator.registerFactory(() => AppInfo());
}
