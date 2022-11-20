import 'package:flutter/cupertino.dart';

class PersonErrorContent extends StatelessWidget {
  const PersonErrorContent({
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
