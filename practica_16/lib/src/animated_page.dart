import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _height = 150;
  double _width = 150;
  double _font = 25;

  void _updateState() {
    setState(() {
      _height = 300;
      _width = 300;
      _font = 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: const Text('Animated'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          curve: Curves.bounceOut,
          width: _width,
          height: _height,
          color: const Color.fromARGB(255, 160, 12, 128),
          child: Center(
            child: Text(
              '¡HOLA!',
              style: TextStyle(fontSize: _font, color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateState,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
