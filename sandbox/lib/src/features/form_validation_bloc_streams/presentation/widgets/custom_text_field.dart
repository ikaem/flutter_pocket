import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.color = Colors.white,
    this.inputFormatters,
    this.isObscuredText = false,
    this.labelColor = Colors.black,
    this.labelText = "",
    this.hintText = "",
    this.labelStyle,
    this.textInputType = TextInputType.text,
    this.maxLength,
    // NOTE MAX LINES COLL THING
    this.maxLines = 1,
    // TODO WHAT is this used for
    this.isBorder = true,
    this.onChange,
    this.textEditingController,
  });

  final Color color;
  final bool isBorder;
  final List<TextInputFormatter>? inputFormatters;
  final bool isObscuredText;
  final Color labelColor;
  final String labelText;
  final String hintText;
  final TextStyle? labelStyle;
  final TextInputType textInputType;
  final int? maxLength;
  final int? maxLines;
  final ValueSetter<String>? onChange;
  final TextEditingController? textEditingController;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
// TODO in the tutorial, this variable is created outside of build method, marked as late, and then given value in the build method
    final TextStyle labeStyle = widget.labelStyle ??
        const TextStyle(
          color: Colors.black38,
          fontSize: 14,
          height: 0.5,
        );

    return Container(
      decoration: BoxDecoration(
        border: widget.isBorder
            ? Border.all(color: Colors.black, width: 1.0)
            : null,
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 8,
      ),
      child: TextField(
        controller: widget.textEditingController,
        inputFormatters: widget.inputFormatters,
        onChanged: widget.onChange,
        obscureText: widget.isObscuredText,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          counterText: "",
          labelText: widget.labelText,
          // no border because we set th border on the countainer
          border: InputBorder.none,
          labelStyle: labeStyle,
          hintText: widget.hintText,
          hintStyle: labeStyle,
        ),
      ),
    );
  }
}
