import 'package:flutter/material.dart';

class HeightSettingItem extends StatelessWidget {
  const HeightSettingItem({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: const Border(),
      title: const Text("Altura"),
      childrenPadding: const EdgeInsets.all(16.0),
      children: children,
    );
  }
}
