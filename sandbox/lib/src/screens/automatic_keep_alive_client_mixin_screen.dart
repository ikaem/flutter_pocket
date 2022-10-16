import 'package:flutter/material.dart';

class AutomaticKeepAliveClientMixinScreen extends StatefulWidget {
  const AutomaticKeepAliveClientMixinScreen({super.key});

  static const routeName = "/keep-alive";

  @override
  State<AutomaticKeepAliveClientMixinScreen> createState() =>
      _AutomaticKeepAliveClientMixinScreenState();
}

class _AutomaticKeepAliveClientMixinScreenState
    extends State<AutomaticKeepAliveClientMixinScreen>
    with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("Count: $_counter."),
              TextButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: const Text("Increase"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
