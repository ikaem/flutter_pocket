import 'dart:math';

import 'package:flutter/material.dart';

class OffstageWidgetScreen extends StatefulWidget {
  static const routeName = "offstage-widget-screen";
  const OffstageWidgetScreen({super.key});

  @override
  State<OffstageWidgetScreen> createState() => _OffstageWidgetScreenState();
}

class _OffstageWidgetScreenState extends State<OffstageWidgetScreen> {
  bool _isOffstageVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text("This is some normal widget"),
              SizedBox(
                height: Random().nextInt(10) + 10,
              ),
              const Offstage(
                offstage: true,
                child: Text("This can be offstage"),
              ),
              SizedBox(
                height: Random().nextInt(10) + 10,
              ),
              TextButton(
                onPressed: () {
                  toggleOffstageVisibility(false);
                },
                child: const Text("Make not visible"),
              ),
              SizedBox(
                height: Random().nextInt(10) + 10,
              ),
              TextButton(
                onPressed: () {
                  toggleOffstageVisibility(true);
                },
                child: const Text("Make visible"),
              ),
              Offstage(
                offstage: !_isOffstageVisible,
                child: const TextField(
                  // this actually immediately receives focus on page open - but it is not visible - keyboard still opens though
                  autofocus: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toggleOffstageVisibility(bool isVisible) {
    setState(() {
      _isOffstageVisible = isVisible;
    });
  }
}
