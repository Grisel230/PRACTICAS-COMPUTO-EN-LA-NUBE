import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({super.key});

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int _currentIndex = 0;

  final List<Widget> tabs = [
    const Center(
      child: Text("Mapa", style: TextStyle(fontSize: 36, color: Colors.purple)),
    ),
    const Center(
      child: Text(
        "E-Mail",
        style: TextStyle(fontSize: 36, color: Colors.purple),
      ),
    ),
    const Center(
      child: Text(
        "Alarma",
        style: TextStyle(fontSize: 36, color: Colors.purple),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRACTICA 07"),
        backgroundColor: Colors.purple,
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple.shade200,
        backgroundColor: Colors.purple.shade100,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa"),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "E-mail"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Alarma"),
        ],
      ),
    );
  }
}
