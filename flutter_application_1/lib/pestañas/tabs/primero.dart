
import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/celsius.dart';

class Primero extends StatefulWidget {
  const Primero({super.key});

  @override
  State<Primero> createState() => _PrimerTabState();
}

class _PrimerTabState extends State<Primero> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Celsius grados = new Celsius();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Ingrese los c',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Convertir'),
              onPressed: () {
                double celsius = double.parse(_textEditingController.text);
                double fahrenheit = grados.celsiusToFahrenheit(celsius);
                String resultado = fahrenheit.toString();
                setState(() {
                  _labelGrados = resultado;
                  //_textEditingController.clear();
                });
              },
            ),
            
            SizedBox(height: 20),
            Text(_labelGrados),
          ],
        ),
      ),
    );
  }
}
