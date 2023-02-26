import 'package:flutter/material.dart';

abstract class AppRouter {
  static toScreen(BuildContext context, Widget screen) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => screen));
}
