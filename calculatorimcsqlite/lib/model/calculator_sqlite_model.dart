import 'dart:math';

class CalculadoraSQLiteModel {
  get altura => null;

  static double _calcularIMC(double peso, double altura) {
    return peso / pow(altura, 2);
  }

  static String classificacao(double peso, double altura) {
    double imc = _calcularIMC(peso, altura);
    String result = "";

    if (imc < 16) {
      result = "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      result = "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      result = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      result = "Saudável";
    } else if (imc >= 25 && imc < 30) {
      result = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      result = "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      result = "Obesidade Grau II (severa)";
    } else if (imc >= 40) {
      result = "Obesidade Grau III (mórbida)";
    }

    return result;
  }
}
