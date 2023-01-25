import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TextSpanScreen extends StatelessWidget {
  static const routeName = "/text-span";

  TextSpanScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildInlineInput(),
              const SizedBox(
                height: 10,
              ),
              buildTappableRichText(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInlineInput() {
    return // this is cool - no need to use RichText
        Text.rich(
      // but child has to be text span
      TextSpan(
        text: "What is your name",
        style: const TextStyle(
          color: Colors.orange,
          fontSize: 30.0,
        ),
        children: <InlineSpan>[
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 100),
              child: const TextField(),
            ),
          ),
          const TextSpan(text: "?")
        ],
      ),
    );
  }

  Widget buildTappableRichText(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          // this will now be root style of the inline span widget tree
          color: Colors.white,
        ),
        children: <InlineSpan>[
          TextSpan(
            text: "Click me",
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
            // RECONGNIZER IS IMPORTANT
            recognizer: TapGestureRecognizer()..onTap = onTapHello(context),
          ),
          const WidgetSpan(
            child: Icon(LineAwesomeIcons.smiling_face),
            alignment: PlaceholderAlignment.middle,
          ),
          const TextSpan(
            text: "We are what? ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  void Function() onTapHello(BuildContext context) => () {
        // _scaffoldKey.currentState.showSnackbar // -> no good anymore
        const snackbar = SnackBar(content: Text("Hello"));

        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      };
}
