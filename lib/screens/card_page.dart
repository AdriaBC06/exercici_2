import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [_cardTipus1(), SizedBox(height: 30.0), _cardTipus2()],
      ),
    );
  }
}

Widget _cardTipus1() {
  return Card(
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Títol de la targeta'),
          subtitle: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: Text('OK')),
            TextButton(onPressed: () {}, child: Text('Cancel·lar')),
          ],
        ),
      ],
    ),
  );
}

Widget _cardTipus2() {
  return Card(
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
            'https://upload-os-bbs.hoyolab.com/upload/2025/01/26/347074628/910d25952399a466227f0efb3c45ee6a_3187046766951281864.webp?x-oss-process=image%2Fresize%2Cs_1000%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_70',
          ),
          fadeInDuration: Duration(milliseconds: 1000),
          height: 250,
          fit: BoxFit.cover,
        ),
        Container(child: Text('Kasane Pearto :3'), padding: EdgeInsets.all(10)),
      ],
    ),
  );
}
