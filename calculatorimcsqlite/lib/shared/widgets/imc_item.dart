import 'package:calculatorimcsqlite/repository/calculator_imc.dart';
import 'package:flutter/material.dart';

class IMCItem extends StatelessWidget {
  const IMCItem({
    super.key,
    required this.imc,
    required this.deleteFunction,
  });

  final CalculatorImc imc;
  final VoidCallback deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          imc.classificacao ?? "Classificação",
          style: titleStyle,
        ),
        subtitle: _IMGItemSubtitle(
          children: [
            Text('Peso: ${imc.peso?.toStringAsFixed(2)}'),
            Text('Altura: ${imc.altura?.toStringAsFixed(2)}'),
          ],
        ),
        isThreeLine: true,
        trailing: IconButton(
            onPressed: deleteFunction,
            icon: const Icon(
              Icons.delete,
            )),
      ),
    );
  }

  final TextStyle titleStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}

class _IMGItemSubtitle extends StatelessWidget {
  const _IMGItemSubtitle({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
