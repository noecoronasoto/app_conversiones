import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/fahrenheit.dart';


class Cuarto extends StatefulWidget {
  const Cuarto({super.key});

  @override
  State<Cuarto> createState() => _CuartoTabState();
}

class _CuartoTabState extends State<Cuarto> {
  TextEditingController _textEditingController = TextEditingController();
  String _labelGrados = '';
  Fahrenheit grados = new Fahrenheit();
  
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
                hintText: 'Ingrese los f',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Convertir'),
              onPressed: () {
                double fahrenheit = double.parse(_textEditingController.text);
                double kelvin = grados.fahrenheitToKelvin(fahrenheit);
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

