import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class CrudPage extends StatefulWidget {
  const CrudPage({Key? key}) : super(key: key);

  @override
  CrudPageState createState() => CrudPageState();
}

class CrudPageState extends State<CrudPage> {
  late String _path;
  late Database database;

  @override
  void initState() {
    _createDB();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Text(
            'PRACTICA 14',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _insertDB();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text('INSERT'),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _removeDB();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: Text('REMOVE'),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _updateDB();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text('UPDATE'),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _showDB();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                ),
                child: Text('SHOW'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _createDB() async {
    var dbpath = await getDatabasesPath();

    _path = '${dbpath}my_db.db';

    database = await openDatabase(
      _path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, nickname TEXT)',
        );
      },
    );
  }

  void _insertDB() async {
    await database.transaction((txn) async {
      int reg1 = await txn.rawInsert(
        'INSERT INTO Test (name, nickname) VALUES ("Din Djarin", "The Mandalorian")',
      );
      print('Insert $reg1');

      int reg2 = await txn.rawInsert(
        'INSERT INTO Test (name, nickname) VALUES (?,?)',
        ['Grogu', 'The Child'],
      );
      print('Insert $reg2');
    });
  }

  void _removeDB() async {
    int rem = await database.rawDelete('DELETE FROM Test WHERE name = ?', [
      'Grogu',
    ]);
    print('Remove: $rem');
  }

  void _updateDB() async {
    int upt = await database.rawUpdate(
      'UPDATE Test SET nickname =? WHERE name = ?',
      ['Mando', 'Din Djarin'],
    );
    print('Update: $upt');
  }

  void _showDB() async {
    List<Map> show = await database.rawQuery('SELECT * FROM Test');
    print(show);
  }
}
