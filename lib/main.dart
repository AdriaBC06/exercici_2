import 'package:flutter/material.dart';
import 'screens/home_temp.dart';
import 'screens/home_page.dart';
import './providers/menu_providers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Components',
     home: HomePage()
   );
 }
}

List<Widget> _llistaElements() {
 // Prova menuProvider
 print(menuProvider.opcions);
 // Retorna llista buida
 return [];
}

// 18