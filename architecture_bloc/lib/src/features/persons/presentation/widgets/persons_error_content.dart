import 'package:flutter/cupertino.dart';

class PersonsErrorContent extends StatelessWidget {
  const PersonsErrorContent({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
