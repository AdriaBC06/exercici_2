import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Avatar page'),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.arrow_back),
       onPressed: (){
         Navigator.pop(context);
       }
     ),
   );
 }
}
