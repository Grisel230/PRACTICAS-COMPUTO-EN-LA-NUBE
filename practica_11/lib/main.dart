import 'package:flutter/material.dart';
import 'src/shared_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'PRACTICA 11', home: SharedPage());
  }
}
