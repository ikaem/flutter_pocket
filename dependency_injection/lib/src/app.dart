import 'package:dependency_injection/src/models/app_info.dart';
import 'package:dependency_injection/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return InheritedInjection(
    //   child: MaterialApp(
    //     home: HomeScreen(
    //       info: AppInfo(),
    //     ),
    //   ),
    // );

    // return MaterialApp(
    //   home: HomeScreen(
    //     info: AppInfo(),
    //   ),
    // );

    return Provider(
      create: (context) {
        return AppInfo();
      },
      child: MaterialApp(
        home: HomeScreen(
          info: AppInfo(),
        ),
      ),
    );
  }
}
