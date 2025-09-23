import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/bmi_model.dart';

class ResultScreen extends StatelessWidget {
  final BMIModel bmiModel;

  const ResultScreen({Key? key, required this.bmiModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'Resultado IMC',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF6366F1),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF6366F1),
                    Color(0xFF8B5CF6),
                    Color(0xFFA855F7),
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF6366F1).withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(35),
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: SvgPicture.asset(
                          bmiModel.result.imagePath,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Valor del IMC
                    Text(
                      bmiModel.bmi.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Clasificación
                    Text(
                      bmiModel.result.classification,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),

                    // Descripción
                    Text(
                      bmiModel.result.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // detalles del cálculo
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFF1F5F9), Color(0xFFE2E8F0)],
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF6366F1).withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF6366F1).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.calculate,
                            color: Color(0xFF6366F1),
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Detalles del Cálculo',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildDetailRow('Peso:', '${bmiModel.weight} kg'),
                    _buildDetailRow('Estatura:', '${bmiModel.height} m'),
                    _buildDetailRow(
                      'IMC:',
                      '${bmiModel.bmi.toStringAsFixed(2)}',
                    ),
                    _buildDetailRow('Fórmula:', 'Peso ÷ Estatura²'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            //rangos de IMC
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFF1F5F9), Color(0xFFE2E8F0)],
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF6366F1).withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF6366F1).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.analytics,
                            color: Color(0xFF6366F1),
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Rangos de IMC',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildBMIRange('Menor a 18', 'Peso Bajo', 0xFF60A5FA),
                    _buildBMIRange('18 - 24.9', 'Normal', 0xFF10B981),
                    _buildBMIRange('25 - 26.9', 'Obesidad', 0xFFF59E0B),
                    _buildBMIRange('27 - 29.9', 'Obesidad grado I', 0xFFEF4444),
                    _buildBMIRange(
                      '30 - 39.9',
                      'Obesidad grado II',
                      0xFFEC4899,
                    ),
                    _buildBMIRange(
                      'Mayor de 40',
                      'Obesidad grado III',
                      0xFF8B5CF6,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF6366F1).withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.refresh, size: 20),
                label: const Text(
                  'Calcular Nuevamente',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF6366F1).withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF64748B),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6366F1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBMIRange(String range, String classification, int color) {
    final isCurrentRange = _isCurrentRange(range);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isCurrentRange
            ? Color(color).withOpacity(0.15)
            : Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isCurrentRange
              ? Color(color).withOpacity(0.5)
              : const Color(0xFF6366F1).withOpacity(0.2),
          width: isCurrentRange ? 2 : 1,
        ),
        boxShadow: isCurrentRange
            ? [
                BoxShadow(
                  color: Color(color).withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: Color(color),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(color).withOpacity(0.3),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              range,
              style: TextStyle(
                fontSize: 15,
                fontWeight: isCurrentRange ? FontWeight.bold : FontWeight.w600,
                color: isCurrentRange ? Color(color) : const Color(0xFF1E293B),
              ),
            ),
          ),
          Text(
            classification,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isCurrentRange ? FontWeight.bold : FontWeight.w600,
              color: isCurrentRange ? Color(color) : const Color(0xFF64748B),
            ),
          ),
        ],
      ),
    );
  }

  bool _isCurrentRange(String range) {
    final bmi = bmiModel.bmi;
    if (range == 'Menor a 18') return bmi < 18;
    if (range == '18 - 24.9') return bmi >= 18 && bmi <= 24.9;
    if (range == '25 - 26.9') return bmi >= 25 && bmi <= 26.9;
    if (range == '27 - 29.9') return bmi >= 27 && bmi <= 29.9;
    if (range == '30 - 39.9') return bmi >= 30 && bmi <= 39.9;
    if (range == 'Mayor de 40') return bmi > 40;
    return false;
  }
}
