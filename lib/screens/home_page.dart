import 'package:flutter/material.dart';
import 'package:exercici_2/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Components")),
      body: _llista(),
    );
  }
}

Widget _llista(){
 // Retornam un Widget de tipus ListView,
 // el children del qual és un mètode
 //que retornarà una llista de Widgets
 return ListView(
   children: _llistaElements(),
 );
}


List<Widget> _llistaElements() {
 // Prova menuProvider
 print(menuProvider.opcions);
 // Retorna llista buida
 return [];
}