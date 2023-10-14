import 'package:calculatorimcsqlite/repository/calculator_imc.dart';

abstract interface class CalculatorImcRepository {
  Future<void> addAltura(CalculatorImc imc);
  Future<double> getAltura();
  Future<void> addIMC(CalculatorImc imc);
  Future<void> removeIMC(CalculatorImc imc);
  Future<List<CalculatorImc>> getIMCs();
}
