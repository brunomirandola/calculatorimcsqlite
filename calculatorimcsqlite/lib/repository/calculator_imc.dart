class CalculatorImc {
  final int? id;
  final double? peso;
  final double? altura;
  final String? classificacao;

  const CalculatorImc({this.id, this.peso, this.altura, this.classificacao});

  factory CalculatorImc.fromJson(Map<String, dynamic> json) {
    return CalculatorImc(
      id: json['id'],
      peso: json['peso'],
      altura: json['altura'],
      classificacao: json['classificacao'],
    );
  }

  CalculatorImc copyWith(
      {int? id, double? peso, double? altura, String? classificacao}) {
    return CalculatorImc(
      id: id ?? this.id,
      peso: peso ?? this.peso,
      altura: altura ?? this.altura,
      classificacao: classificacao ?? this.classificacao,
    );
  }
}
