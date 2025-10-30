import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Cards'),
     ),
     body: ListView(
       children: [
         _cardTipus1()
       ],
     )
   );
 }
}

Widget _cardTipus1() {
 return Card(
   child: Column(
     children: [
       ListTile(
         leading: Icon(Icons.photo_album, color: Colors.blue),
         title: Text('Prova'),
       )
     ],
   ),
 );
}
