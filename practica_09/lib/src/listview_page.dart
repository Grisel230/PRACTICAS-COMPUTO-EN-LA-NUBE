import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});

  // Lista de tipos de Pokémon
  final List<String> tipos = const [
    "Normal",
    "Fighting",
    "Flying",
    "Poison",
    "Ground",
    "Rock",
    "Bug",
    "Ghost",
    "Steel",
    "Fire",
    "Water",
    "Grass",
    "Electric",
    "Psychic",
    "Ice",
    "Dragon",
    "Dark",
    "Fairy",
    "Unknown",
    "Shadow",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRACTICA 09"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 149, 48, 216),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: tipos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/pokeball.jpg"),
            ),
            title: Text(tipos[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
