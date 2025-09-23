class BMIModel {
  final double weight;
  final double height;
  final double bmi;
  final BMIResult result;

  BMIModel({
    required this.weight,
    required this.height,
    required this.bmi,
    required this.result,
  });
  factory BMIModel.calculate(double weight, double height) {
    final bmi = weight / (height * height);
    final result = _getBMIResult(bmi);

    return BMIModel(weight: weight, height: height, bmi: bmi, result: result);
  }
  static BMIResult _getBMIResult(double bmi) {
    if (bmi < 18) {
      return BMIResult(
        classification: 'Peso Bajo',
        description: 'Necesario valorar signos de desnutrición',
        imagePath: 'assets/images/underweight.svg',
        color: 0xFF60A5FA,
      );
    } else if (bmi >= 18 && bmi <= 24.9) {
      return BMIResult(
        classification: 'Normal',
        description: 'Peso saludable',
        imagePath: 'assets/images/normal.svg',
        color: 0xFF10B981,
      );
    } else if (bmi >= 25 && bmi <= 26.9) {
      return BMIResult(
        classification: 'Obesidad',
        description: 'Sobrepeso',
        imagePath: 'assets/images/overweight.svg',
        color: 0xFFF59E0B,
      );
    } else if (bmi >= 27 && bmi <= 29.9) {
      return BMIResult(
        classification: 'Obesidad grado I',
        description:
            'Riesgo relativo para desarrollar enfermedades cardiovasculares',
        imagePath: 'assets/images/obesity1.svg',
        color: 0xFFEF4444,
      );
    } else if (bmi >= 30 && bmi <= 39.9) {
      return BMIResult(
        classification: 'Obesidad grado II',
        description:
            'Riesgo relativo muy alto para el desarrollo de enfermedades cardiovasculares',
        imagePath: 'assets/images/obesity2.svg',
        color: 0xFFEC4899,
      );
    } else {
      return BMIResult(
        classification: 'Obesidad grado III',
        description:
            'Extrema o mórbida. Riesgo relativo extremadamente alto para el desarrollo de enfermedades cardiovasculares',
        imagePath: 'assets/images/obesity3.svg',
        color: 0xFF8B5CF6,
      );
    }
  }
}

class BMIResult {
  final String classification;
  final String description;
  final String imagePath;
  final int color;

  BMIResult({
    required this.classification,
    required this.description,
    required this.imagePath,
    required this.color,
  });
}
