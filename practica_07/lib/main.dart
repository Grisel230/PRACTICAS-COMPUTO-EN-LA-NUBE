import 'package:flutter/material.dart';
import 'src/bottom-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 07',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const BottomNavigatorPage(),
    );
  }
}
