import 'package:flutter/material.dart';
import 'src/main_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 08',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white,
          elevation: 8,
        ),
      ),
      home: const MainDrawerScreen(),
    );
  }
}

class MainDrawerScreen extends StatefulWidget {
  const MainDrawerScreen({super.key});

  @override
  State<MainDrawerScreen> createState() => _MainDrawerScreenState();
}

class _MainDrawerScreenState extends State<MainDrawerScreen> {
  String _titulo = 'PRACTICA 08';
  Widget _contenido = const Center(
    child: Text('Contenido principal', style: TextStyle(fontSize: 18)),
  );

  void _onSelectMenu(String titulo, Widget nuevoContenido) {
    setState(() {
      _titulo = titulo;
      _contenido = nuevoContenido;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titulo)),
      body: _contenido,
      drawer: AppDrawer(onSelectMenu: _onSelectMenu),
    );
  }
}
