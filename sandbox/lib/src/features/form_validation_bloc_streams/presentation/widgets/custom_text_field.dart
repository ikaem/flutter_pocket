import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  final Color color;
  final bool isBorder;
  final List<TextInputFormatter>? inputFormatters;
  final bool isObscureText;
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
    return Container();
  }
}
