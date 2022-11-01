import 'package:flutter/material.dart';

class FocusNodeScreen extends StatefulWidget {
  static const routeName = "focus-node";

  const FocusNodeScreen({super.key});

  @override
  State<FocusNodeScreen> createState() => _FocusNodeScreenState();
}

class _FocusNodeScreenState extends State<FocusNodeScreen> {
  late final FocusNode fFName;
  late final FocusNode fLName;
  late final FocusNode fAge;
  late final FocusNode fEmail;
  late final FocusNode fSubmit;

  @override
  void initState() {
    super.initState();

    fFName = FocusNode();
    fLName = FocusNode();
    fAge = FocusNode();
    fEmail = FocusNode();
    fSubmit = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();

    fFName.dispose();
    fLName.dispose();
    fAge.dispose();
    fEmail.dispose();
    fSubmit.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          child: Column(
            children: [
              TextFormField(
                focusNode: fFName,
                // this without onField submitted will actually move focus to next text input
                // but if we request focus and specify it like we did in onfield submitted, this is not needed
                textInputAction: TextInputAction.next,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: "First name",
                  labelText: "First name",
                ),
                onFieldSubmitted: (value) {
                  // this by itself does not move to the next field
                  fFName.unfocus();
                  // if we use request focus, we dont need text input action.next
                  FocusScope.of(context).requestFocus(fLName);
                },
              ),
              TextFormField(
                focusNode: fLName,
                decoration: const InputDecoration(
                  hintText: "Last name",
                  labelText: "Last name",
                ),
                onFieldSubmitted: (value) {
                  fLName.unfocus();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
