import 'package:flutter/material.dart';

class WillPopScopeScreen extends StatefulWidget {
  const WillPopScopeScreen({super.key});

  static const String routeName = "/will-pop-scope";

  @override
  State<WillPopScopeScreen> createState() => _WillPopScopeScreenState();
}

class _WillPopScopeScreenState extends State<WillPopScopeScreen> {
  bool _isPopBackAllowed = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            return _isPopBackAllowed;
          },
          child: Center(
            child: Column(
              children: [
                Text(
                    "Popping is allowed: ${_isPopBackAllowed ? "true" : "false"}"),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        _isPopBackAllowed = !_isPopBackAllowed;
                      },
                    );
                  },
                  child: const Text("Toggle"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
