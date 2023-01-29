import 'package:flutter/material.dart';
import 'package:sandbox/src/features/dependecy_injection_get_it_injectable/libraries/get_it/configure_get_it_dependencies/configure_get_it_dependencies.dart';
import 'package:sandbox/src/libraries/firebase/firebase_core/firebase_core_wrapper.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureGetItDependencies();
  // await firebaseCoreWrapper.initializeFirebaseApp();
  // final FirebaseCoreWrapper firebaseCoreWrapper =
  //     dependencyLocator<FirebaseCoreWrapper>();

  runApp(const MyApp());
}

// TODO how to expose this to rest of the app via get it
final FirebaseCoreWrapper firebaseCoreWrapper = FirebaseCoreWrapper();
