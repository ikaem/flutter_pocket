import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sandbox/src/features/streams_and_rx_dart/presentation/controllers/subscribe/subscribe_validator.dart';

// https://levelup.gitconnected.com/streams-and-rxdart-in-flutter-9135ef64912e

class StreamsAndRXDartScreen extends StatelessWidget {
  static const routeName = "streams-and-rxdart";

  const StreamsAndRXDartScreen({super.key});

  @override
  Widget build(BuildContext context) {
// TODO this is test only - usually we would instnatiate this in a bloc, or in a provider somewhere
    final SubscribeValidator subscribeValidator = SubscribeValidator();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: subscribeValidator.emailStream,
              builder: (
                BuildContext context,
                AsyncSnapshot<String> snapshot,
              ) =>
                  _emailStreamBuilder(
                context: context,
                snapshot: snapshot,
                onChange: subscribeValidator.onEmailChange,
              ),
            ),
            StreamBuilder(
              stream: subscribeValidator.messageStream,
              builder: (
                BuildContext context,
                AsyncSnapshot<String> snapshot,
              ) =>
                  _emailStreamBuilder(
                context: context,
                snapshot: snapshot,
                onChange: subscribeValidator.onMessageChange,
              ),
            ),
            StreamBuilder<bool>(
              stream: subscribeValidator.inputsValidatedStream,
              builder: (
                BuildContext context,
                AsyncSnapshot<bool> snapshot,
              ) =>
                  _submitStreamBuilder(
                context: context,
                snapshot: snapshot,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailStreamBuilder({
    required BuildContext context,
    required AsyncSnapshot<String> snapshot,
    required ValueSetter<String> onChange,
  }) {
    final Object? error = snapshot.error;

    log("This is error: $error");

    return TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: onChange,
      decoration: InputDecoration(
        labelText: "Email",
        errorText: error?.toString(),
      ),
    );
  }

  Widget _messageStreamBuilder({
    required BuildContext context,
    required AsyncSnapshot<String> snapshot,
    required ValueSetter<String> onChange,
  }) {
    final Object? error = snapshot.error;

    log("This is error: $error");

    return TextField(
      keyboardType: TextInputType.text,
      onChanged: onChange,
      decoration: InputDecoration(
        labelText: "Message",
        errorText: error?.toString(),
      ),
    );
  }

  Widget _submitStreamBuilder({
    required BuildContext context,
    required AsyncSnapshot<bool> snapshot,
    // required ValueSetter<String> onChange,
  }) {
    final Object? error = snapshot.error;
    final bool? isValid = snapshot.data;

    log("This is error in button: $error");
    log("This is valid in button: $isValid");

    return ElevatedButton(
      onPressed: isValid != null
          ? () {
              log("Sent");
            }
          : null,
      child: const Text("Send"),
    );
  }
}
