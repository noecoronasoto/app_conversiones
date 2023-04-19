import 'package:flutter/material.dart';

import 'package:flutter_application_1/pestañas/tabs/primero.dart';
import 'package:flutter_application_1/pestañas/tabs/segundo.dart';
import 'package:flutter_application_1/pestañas/tabs/tercero.dart';
import 'package:flutter_application_1/pestañas/tabs/cuarto.dart';
import 'package:flutter_application_1/pestañas/tabs/quinto.dart';
import 'package:flutter_application_1/pestañas/tabs/sexto.dart';

void main() {
  runApp(const Conversiones());
}

class Conversiones extends StatelessWidget {
  const Conversiones({super.key});

  @override
  Widget build(BuildContext context) {
    final TabController = DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("conversiones proyecto"),
          bottom: const TabBar(
           
            tabs: <Widget>[
              Tab(text: "C - F"),
              Tab(text: "C - K"),
              Tab(text: "F - C"),
              Tab(text: "F - K"),
              Tab(text: "K - C"),
              Tab(text: "K - F"),
              ],
            ),
            
          ),
           body: const TabBarView(
            children: [
              Primero(),
              Segundo(),
              Tercero(),
              Cuarto(),
              Quinto(),
              Sexto(),
          ],
        ),
      ),
    );

     return MaterialApp(
      title: 'Tabs',
      theme: ThemeData(
      
      ),
      home: TabController,
    );
  }
}
