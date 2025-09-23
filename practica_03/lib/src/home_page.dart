import 'package:flutter/material.dart';
import 'datos_recibidos.dart'; // aquí usamos Data y DatosPage

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textoController = TextEditingController();
  String _sexo = 'Mujer'; // valor inicial (debe coincidir con un item)
  final List<String> _opcionesSexo = ['Mujer', 'Hombre'];

  @override
  void dispose() {
    _textoController.dispose(); // liberar recursos
    super.dispose();
  }

  void _enviar() {
    final texto = _textoController.text.trim();
    if (texto.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Escribe algo antes de enviar')),
      );
      return;
    }
    final data = Data(texto: texto, sexo: _sexo);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DatosPage(data: data)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 03'),
        backgroundColor: const Color(0xFF1e3a8a),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFf8fafc), Color(0xFFe0e7ff)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Card con el formulario
              Card(
                elevation: 8,
                shadowColor: const Color(0xFF1e3a8a).withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Información personal',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1e3a8a),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Campo de texto
                      TextField(
                        controller: _textoController,
                        decoration: InputDecoration(
                          labelText: 'Escribe tu nombre',
                          hintText: 'Ingresa tu nombre',
                          prefixIcon: const Icon(
                            Icons.edit,
                            color: Color(0xFF3b82f6),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color(0xFF3b82f6),
                              width: 2,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Dropdown
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: _sexo,
                          underline: const SizedBox(),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF7c3aed),
                          ),
                          items: _opcionesSexo
                              .map(
                                (s) => DropdownMenuItem<String>(
                                  value: s,
                                  child: Row(
                                    children: [
                                      Icon(
                                        s == 'Mujer'
                                            ? Icons.female
                                            : Icons.male,
                                        color: const Color(0xFF7c3aed),
                                        size: 20,
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        s,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF1f2937),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (String? nuevo) {
                            if (nuevo == null) return;
                            setState(() => _sexo = nuevo);
                          },
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Botón de envío
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: _enviar,
                          icon: const Icon(Icons.send, size: 20),
                          label: const Text('Enviar datos'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3b82f6),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 3,
                            shadowColor: const Color(
                              0xFF3b82f6,
                            ).withOpacity(0.4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
