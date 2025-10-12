import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});
  static const List<String> _clasesPokemon = [
    'Normal',
    'Fighting',
    'Flying',
    'Poison',
    'Ground',
    'Rock',
    'Bug',
    'Ghost',
    'Steel',
    'Fire',
    'Water',
    'Grass',
    'Electric',
    'Psychic',
    'Ice',
    'Dragon',
    'Dark',
    'Fairy',
    'Unknown',
    'Shadow',
    '_______',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 10 - Pokédex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: _clasesPokemon.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            title: Text(_clasesPokemon[index]),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/188/188918.png',
              ),
              radius: 16.0,
            ),
            trailing: Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
