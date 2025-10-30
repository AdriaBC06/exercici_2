import 'package:exercici_2/routes/routes.dart';
import 'package:exercici_2/screens/alert_page.dart';
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
      // home: HomePage(),
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Hem anat a: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}
