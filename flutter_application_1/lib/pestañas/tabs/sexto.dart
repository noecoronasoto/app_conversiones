import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/kelvin.dart';



class Sexto extends StatefulWidget {
  const Sexto({super.key});

  @override
  State<Sexto> createState() => _SextoTabState();
}

class _SextoTabState extends State<Sexto> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Kelvin grados = new Kelvin();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('calculadora'),
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
                double fahrenheit = grados.kelvinToFahrenheit(kelvin);
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

