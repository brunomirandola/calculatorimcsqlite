class FormFieldValidation {
  static String? pesoValidation(String? value) {
    if (_isEmpty(value)) {
      return "O Peso deve ser informado";
    } else {
      double peso = double.parse(value!);
      if (peso < 0.0) {
        return "O Peso não pode ser menor que 0.";
      }
    }

    return null;
  }

  static String? alturaValidation(String? value) {
    if (_isEmpty(value)) {
      return "A Altura deve ser informada.";
    } else {
      double peso = double.parse(value!);
      if (peso < 0.0) {
        return "A Altura não pode ser menor que 0.";
      }
    }

    return null;
  }

  static bool _isEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return true;
    }

    return false;
  }
}
