import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.validator,
    this.onChanged,
    this.controller,
    this.suffixIcon,
    this.initialValue,
  });

  final String hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: (Colors.amber)));

    return TextFormField(
      initialValue: initialValue,
      controller: controller,
      autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.all(10.0),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black38),
        border: border,
        enabledBorder: border,
        errorBorder:
            border.copyWith(borderSide: const BorderSide(color: Colors.red)),
        focusedBorder: border,
      ),
      validator: validator,
      onChanged: onChanged,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
    );
  }
}
