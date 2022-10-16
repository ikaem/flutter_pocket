import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showCustomDialog({required String title}) {
    showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
        );
      },
    );
  }

  void push(Widget screen) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
