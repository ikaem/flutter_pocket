import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundedChoiceChip extends StatelessWidget {
  const RoundedChoiceChip({
    super.key,
    required this.label,
    required this.isSelected,
    this.avatar,
    this.labelColor,
    this.selectedLabelColor,
    this.backgroundColor,
    this.selectedBackgroundColor,
    this.onSelected,
  });

  final String label;
  final Widget? avatar;
  final ValueChanged<bool>? onSelected;
  final Color? labelColor;
  final Color? selectedLabelColor;
  final Color? backgroundColor;
  final Color? selectedBackgroundColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final Color currentSelectedLabelColor = selectedLabelColor ?? Colors.red;
    final Color currentUnselectedLabelColor = labelColor ?? Colors.blue;
    final Color currentLabelColor =
        isSelected ? currentSelectedLabelColor : currentUnselectedLabelColor;
    final Color currentSelectedColor = selectedBackgroundColor ?? Colors.yellow;
    final Color currentBackgroundColor = selectedBackgroundColor ?? Colors.pink;

    return ChoiceChip(
      label: Text(
        label,
        style: TextStyle(color: currentLabelColor),
      ),
      selected: isSelected,
      onSelected: onSelected,
      selectedColor: currentSelectedColor,
      backgroundColor: currentBackgroundColor,
    );
  }
}
