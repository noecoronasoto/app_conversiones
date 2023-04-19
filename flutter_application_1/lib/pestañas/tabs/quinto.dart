import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/kelvin.dart';


class Quinto extends StatefulWidget {
  const Quinto({super.key});

  @override
  State<Quinto> createState() => _QuintoTabState();
}

class _QuintoTabState extends State<Quinto> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Kelvin grados = new Kelvin();
  
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
                hintText: 'Ingrese los k',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Convertir'),
              onPressed: () {
                double kelvin = double.parse(_textEditingController.text);
                double celsius = grados.kelvinToCelsius(kelvin);
                String resultado = celsius.toString();
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

