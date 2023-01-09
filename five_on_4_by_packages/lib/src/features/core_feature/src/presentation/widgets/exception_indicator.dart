import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:flutter/material.dart';

class ExceptionIndicator extends StatelessWidget {
  const ExceptionIndicator({
    super.key,
    /* TODO they do not actually require any of these - i can change it later */
    this.title,
    this.message,
    this.onTryAgain,
  });

  final String? title;
  final String? message;
  final VoidCallback? onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 32.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error),
            const SizedBox(
              height: Spacing.xxLarge,
            ),
            Text(
              title ?? "Error",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: FontSize.mediumLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: Spacing.mediumLarge,
            ),
            Text(
              message ?? "There was an error.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Spacing.xxxLarge,
            ),
            if (onTryAgain != null)
              ExpandedElevatedButton(
                label: "Try again",
                icon: const Icon(Icons.refresh),
                onTap: onTryAgain,
              ),
          ],
        ),
      ),
    );
  }
}
