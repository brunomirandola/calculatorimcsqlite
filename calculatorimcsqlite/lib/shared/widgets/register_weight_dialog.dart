import 'package:flutter/material.dart';

AlertDialog registerWeightDialog(BuildContext context,
    {required Widget content, required VoidCallback onCalcularPressed}) {
  return AlertDialog(
    title: const Text('Informe o peso: '),
    titlePadding: const EdgeInsets.all(16.0),
    content: content,
    contentPadding: const EdgeInsets.all(16.0),
    actions: [
      TextButton(onPressed: onCalcularPressed, child: const Text("Calcular"))
    ],
  );
}
