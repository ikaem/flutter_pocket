import 'package:flutter/material.dart';

class EnumsScreen extends StatelessWidget {
  static const routeName = "/enums-screen";

  const EnumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notAMember1Name = EnumWithMembers.notAMemberOne
        .name; // note that this returns the actual name of the enum value - notAMemberOne
    final notAMember2Message = EnumWithMembers.notAMemberTwo
        .message; // this actuall returns message member value - Not a member 2
    final notAMember2AnotherMessage =
        EnumWithMembers.notAMemberTwo.anotherMessage;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text("Enums with members:"),
            Text(notAMember1Name),
            Text(notAMember2Message),
          ],
        ),
      ),
    );
  }
}

enum EnumWithMembers {
  // to be able to have this as a method kinda, we have to have a proper construtor. so the value inside the arguemnt is that arguemtn from the construtor it seems
  notAMemberOne("Not a member 1", "another message 1", null),
  notAMemberTwo("Not a member 2", "another message 2", null);

  const EnumWithMembers(
      this.message, this.anotherMessage, this.optionalMessage);

  final String message;
  final String anotherMessage;
  final String? optionalMessage;
}
