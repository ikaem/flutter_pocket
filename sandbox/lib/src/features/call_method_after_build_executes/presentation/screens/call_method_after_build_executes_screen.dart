import 'dart:developer';

import 'package:flutter/material.dart';

// https://www.flutterbeads.com/call-method-after-build-in-flutter/

class CallMethodAfterBuildExecutesScreen extends StatefulWidget {
  static const routeName = "call-method-after-build-executes";

  const CallMethodAfterBuildExecutesScreen({super.key});

  @override
  State<CallMethodAfterBuildExecutesScreen> createState() =>
      _CallMethodAfterBuildExecutesScreenState();
}

class _CallMethodAfterBuildExecutesScreenState
    extends State<CallMethodAfterBuildExecutesScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      log("This was called after build, at this time: $timeStamp");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("I was created by build function"),
      ),
    );
  }
}
