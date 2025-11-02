import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSilder = 100;
  bool _valorCheckBox = true;
  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Grandària de la imatge',
      // divisions: 20,
      value: _valorSilder,
      min: 10,
      max: 400,
      onChanged: (_valorCheckBox)
          ? null
          : (valor) {
              setState(() {
                _valorSilder = valor;
              });
            },
    );
  }

  Widget _crearImatge() {
    return Image(
      image: NetworkImage(
        'https://p.kindpng.com/picc/s/176-1766643_come-to-the-dart-side-flutter-custom-bottom.png',
      ),
      width: _valorSilder,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquejar Slider'),
      value: _valorCheckBox,
      onChanged: (estat) {
        setState(() {
          _valorCheckBox = estat!;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquejar Slider'),
      value: _valorCheckBox,
      onChanged: (estat) {
        setState(() {
          _valorCheckBox = estat;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders')),
      body: Container(
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImatge()),
          ],
        ),
      ),
    );
  }
}
