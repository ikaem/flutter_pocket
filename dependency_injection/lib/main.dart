import 'package:dependency_injection/src/locator.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  setupLocator();
  runApp(const MyApp());
}
