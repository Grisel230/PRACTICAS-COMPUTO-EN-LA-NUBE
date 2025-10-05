import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final List<String> tipos = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PRACTICA 09'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 112, 6, 183),
      ),
      body: ListView.builder(
        itemCount: tipos.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text(tipos[index]),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(
                'https://m.media-amazon.com/images/I/51I3Xrl9keL._UF1000,1000_QL80_.jpg',
              ),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          );
        },
      ),
    );
  }
}
