import 'package:flutter/cupertino.dart';

class MoviesErrorContent extends StatelessWidget {
  const MoviesErrorContent({
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
