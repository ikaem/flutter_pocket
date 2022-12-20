import 'package:flutter/material.dart';

class ExpandedElevatedButton extends StatelessWidget {
  static const double _elevatedButtonHeight = 48.0;

  const ExpandedElevatedButton({
    super.key,
    required this.label,
    this.onTap,
    this.icon,
  });

  // this is a naed constrocutor for in progress - we just pass icon
  // note that we speciy arguments here as well
  // we could pass icon that is circular progress indiicator, but now we have a construcot for it
  ExpandedElevatedButton.loading({
    Key? key,
    required String label,
    // note that now, we dont want on tap, because we dont want to allow tapping for loading
  }) : this(
          label: label,
          icon: Transform.scale(
            scale: 0.5,
            child: const CircularProgressIndicator(),
          ),
          key: key,
        );

  final VoidCallback? onTap;
  final String label;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    // this is to check what we will build
    final Widget? builtIcon = icon;

    return SizedBox(
      height: _elevatedButtonHeight,
      width: double.infinity,
      child: builtIcon != null
          ? ElevatedButton.icon(
              // TODO this will be null for loading isntance
              onPressed: onTap,
              icon: builtIcon,
              label: Text(label),
            )
          : ElevatedButton(
              onPressed: onTap,
              child: Text(label),
            ),
    );
  }
}
