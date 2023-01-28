import 'package:flutter/material.dart';

class CustomPlainButton extends StatelessWidget {
  const CustomPlainButton({
    super.key,
    this.borderColor = Colors.red,
    this.borderRadius = 35,
    this.borderWidth = 2,
    this.btnColor = Colors.red,
    this.height,
    this.icon,
    this.isEnabled = true,
    this.isExpanded = false,
    this.lblColor = Colors.white,
    this.label = '',
    this.onTap,
    this.style,
    this.paddingHorizontal = 20,
    this.paddingVertical = 20,
  });

  final Color borderColor;
  final double borderRadius;
  final double borderWidth;
  final Color btnColor;
  final bool isEnabled;
  final bool isExpanded;
  final Color lblColor;
  final VoidCallback? onTap;
  final String label;
  final TextStyle? style;
  final double? height;
  final double paddingHorizontal;
  final double paddingVertical;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final _ButtonText buttonText = _ButtonText(
      label: label,
      textStyle: style,
    );

    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        height: height,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        decoration: BoxDecoration(
          color: isEnabled ? btnColor : Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            isExpanded
                ? Expanded(
                    child: buttonText,
                  )
                : buttonText,
            Icon(
              icon,
              color: Colors.white,
              size: 25.0,
            )
          ],
        ),
      ),
    );
  }
}

class _ButtonText extends StatelessWidget {
  const _ButtonText({
    required this.label,
    required this.textStyle,
  });

  final String label;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: textStyle ??
          const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
    );
  }
}
