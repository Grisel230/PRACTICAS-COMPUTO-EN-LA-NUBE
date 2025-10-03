import 'package:flutter/material.dart';
import 'src/listview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // quita la franja de "debug"
      title: 'Práctica 09 - ListView',
      theme: ThemeData(
        primarySwatch: Colors.red, // color del AppBar
      ),
      home: const ListaPage(), // nuestra pantalla inicial
    );
  }
}
