import 'package:flutter/material.dart';

SnackBar successSnackBar(String message) {
  return _customSnackBar(
      message: message,
      backgroundColor: Color.fromARGB(255, 68, 136, 68),
      textColor: Colors.white);
}

SnackBar errorSnackBar(String message) {
  return _customSnackBar(
      message: message,
      backgroundColor: Color.fromARGB(255, 151, 58, 58),
      textColor: Colors.white);
}

SnackBar _customSnackBar(
    {required String message,
    required Color backgroundColor,
    Color? textColor}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Text(
      message,
      style: TextStyle(
          color: textColor, fontWeight: FontWeight.w500, letterSpacing: 0.9),
    ),
    backgroundColor: backgroundColor,
  );
}
