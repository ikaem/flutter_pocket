import 'package:five_on_4_by_packages/firebase_options.dart';
import 'package:flutter/material.dart';
import "package:core_feature/core_feature.dart";

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp(DefaultFirebaseOptions.currentPlatform);

  runApp(
    const MyApp(),
  );
}
