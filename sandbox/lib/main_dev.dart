import 'package:flutter/material.dart';
import 'package:sandbox/app_config.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await configureGetItDependencies();
  // await firebaseCoreWrapper.initializeFirebaseApp();
  // final FirebaseCoreWrapper firebaseCoreWrapper =
  //     dependencyLocator<FirebaseCoreWrapper>();

  const configuredApp = AppConfig(
    environment: Environment.dev,
    appTitle: "[DEV] Sandbox",
    child: MyApp(),
  );

  runApp(configuredApp);
}

// TODO how to expose this to rest of the app via get it
// final FirebaseCoreWrapper firebaseCoreWrapper = FirebaseCoreWrapper();
