import 'package:calculatorimcsqlite/repository/calculator_imc.dart';
import 'package:calculatorimcsqlite/repository/calculator_imc_repository.dart';
import 'package:calculatorimcsqlite/service/calculator_imc_service.dart';
import 'package:calculatorimcsqlite/utils/calculator_imc_classification.dart';
import '../service/heigth_service.dart';

class CalculatorImcSqLiteRepository implements CalculatorImcRepository {
  final CalculatorImcService imcService = CalculatorImcService();
  final AlturaService alturaService = AlturaService();

  @override
  Future<void> addAltura(CalculatorImc imc) async {
    await alturaService.add(imc.altura!);
  }

  @override
  Future<void> addIMC(CalculatorImc imc) async {
    final altura = await getAltura();
    final classificacao =
        CalculatorImcClassification.classificacao(imc.peso!, altura);

    await imcService.add(imc.peso!, classificacao);
  }

  @override
  Future<double> getAltura() async {
    return await alturaService.getOne();
  }

  @override
  Future<List<CalculatorImc>> getIMCs() async {
    final response = await imcService.getAll();
    final imcs = response.map((imc) => CalculatorImc.fromJson(imc)).toList();
    return imcs;
  }

  @override
  Future<void> removeIMC(CalculatorImc imc) async {
    await imcService.delete(imc.id!);
  }
}
