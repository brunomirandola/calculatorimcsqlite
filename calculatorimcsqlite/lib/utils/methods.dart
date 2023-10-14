import 'package:calculatorimcsqlite/shared/widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';

double convertStringToDouble(String text) => double.parse(text);

int convertStringToInt(String text) => int.parse(text);

void clearTextField(TextEditingController controller) => controller.clear();

void showSnackBar(BuildContext context, SnackBar snackBar) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      snackBar,
    );
}

void showSuccessMessage(BuildContext context, String message) {
  showSnackBar(
    context,
    successSnackBar(message),
  );
}

void showErrorMessage(BuildContext context, String message) {
  showSnackBar(
    context,
    errorSnackBar(message),
  );
}
