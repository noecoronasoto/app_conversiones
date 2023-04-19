import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/fahrenheit.dart';



class Tercero extends StatefulWidget {
  const Tercero({super.key});

  @override
  State<Tercero> createState() => _TercerTabState();
}

class _TercerTabState extends State<Tercero> {
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
                double celsius = grados.fahrenheitToCelsius(fahrenheit);
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

