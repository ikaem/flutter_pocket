import 'package:five_on_4_by_packages/firebase_options.dart';
import 'package:flutter/material.dart';
import 'src/app.dart';
import 'src/features/core_feature/core_feature.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp(DefaultFirebaseOptions.currentPlatform);

  final AppLogger appLogger = AppLogger();
  final InputsValidation inputsValidation = InputsValidation();
  final DB database = DB(
    appLogger: appLogger,
  );
  await database.initialize();

  final HttpWrapper httpWrapper = HttpWrapper(
    appLogger: appLogger,
  );
  final FireStore fireStore = FireStore();

  final AppDataSources appDataSources = AppDataSources(
    httpWrapper: httpWrapper,
    database: database,
    fireStore: fireStore,
    appLogger: appLogger,
  );

  final AppRepositories appRepositories = AppRepositories(
    appDataSources: appDataSources,
  );

  final AppUseCases appUseCases = AppUseCases(
    appRepositories: appRepositories,
    appLogger: appLogger,
    inputsValidation: inputsValidation,
  );

  runApp(
    MyApp(
      appLogger: appLogger,
      appUseCases: appUseCases,
    ),
  );
}
