import 'package:flutter/material.dart';

extension BuildContextCustomExtensions on BuildContext {
  void showSnackbarMessage(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }
}
