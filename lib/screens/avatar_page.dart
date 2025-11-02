import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pàgina Avatar'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/media/G1pwcx1XgAAWAnM.jpg',
              ),
              radius: 30.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
            'https://i.pinimg.com/564x/2e/1f/1c/2e1f1cccaee0f5aa9b84cc9ac6353ed4.jpg',
          ),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
      ),
    );
  }
}
