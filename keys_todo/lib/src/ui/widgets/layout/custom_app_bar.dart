import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key});

// TODO this doues not work really
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      title: Text(
        "Keys Todo",
        style: textTheme.headline6!.copyWith(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
