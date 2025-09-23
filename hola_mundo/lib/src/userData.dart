import 'package:flutter/material.dart';
import 'package:hola_app/src/myAlertDialog.dart';

class DatosUsuarios extends StatefulWidget {
  @override
  _DatosusuariosState createState() => _DatosusuariosState();
}

class _DatosusuariosState extends State<DatosUsuarios> {
  var _name;
  var _phone;

  final nameCtrl = new TextEditingController();
  final phoneCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/florr.jpg'),
          SizedBox(height: 10.0),
          TextField(
            controller: nameCtrl,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'Ingresa un nombre',
            ),
          ),
          TextField(
            controller: phoneCtrl,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'ingrese numero de celular',
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
            ),
            child: Text('Enviar'),
            onPressed: () {
              _name = nameCtrl.text;
              _phone = phoneCtrl.text;

              setState(() {
                showAlertDialog(
                  context,
                  'El usuario $_name, tiene un telefono $_phone',
                  'Mi app :D',
                  'Oka',
                  ':c',
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
