import 'package:five_on_4_by_packages/firebase_options.dart';
import 'package:flutter/material.dart';
import "package:core_feature/core_feature.dart";

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp(DefaultFirebaseOptions.currentPlatform);

  final AppLogger appLogger = AppLogger();
  final DB database = DB(
    appLogger: appLogger,
  );
  final HttpWrapper httpWrapper = HttpWrapper(
    appLogger: appLogger,
  );
  final FireStore fireStore = FireStore();

/* TODO this should probably be happening either in main - not un build function - initializing the database */
  await database.initialize();

  runApp(
    MyApp(
      appLogger: appLogger,
      database: database,
      httpWrapper: httpWrapper,
      fireStore: fireStore,
    ),
  );
}
