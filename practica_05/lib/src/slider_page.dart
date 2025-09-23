import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200.0;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PRACTICA 05')),
      body: Column(
        children: [
          const SizedBox(height: 16),

          // Slider
          Slider.adaptive(
            min: 50,
            max: 400,
            divisions: 7,
            label: '${_sliderValue.round()}',
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (double value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
          ),

          // Switch para habilitar/deshabilitar el slider
          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (bool val) {
              setState(() {
                _sliderEnabled = val;
              });
            },
          ),

          // Contenedor con la imagen cuyo tamaño depende del slider
          Expanded(
            child: Center(
              child: Container(
                width: _sliderValue,
                height: _sliderValue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(blurRadius: 8, color: Colors.black26),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/Shrek.png',
                    fit: BoxFit.cover,
                    width: _sliderValue,
                    height: _sliderValue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
