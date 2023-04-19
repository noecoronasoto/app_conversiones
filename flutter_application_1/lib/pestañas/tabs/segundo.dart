import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/celsius.dart';


class Segundo  extends StatefulWidget {
  const Segundo({super.key});

  @override
  State<Segundo> createState() => _SegundoTabState();
}

class _SegundoTabState extends State<Segundo> {
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
                double kelvin = grados.celsiusToKelvin(celsius);
                String resultado = kelvin.toString();
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

