import 'package:flutter/material.dart';

enum SingingCharacter { time1, time2, time3 }

class RedioButtom extends StatefulWidget {
  const RedioButtom({Key? key}) : super(key: key);

  @override
  State<RedioButtom> createState() => _RedioButtomState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _RedioButtomState extends State<RedioButtom> {
  SingingCharacter? _character = SingingCharacter.time1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('3pm - 5pm',
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.time1,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
            activeColor: Colors.teal,
          ),
        ),
        ListTile(
          title: const Text('5pm - 7pm',
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.time2,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
            activeColor: Colors.teal,
          ),
        ),
        ListTile(
          title: const Text('7pm - 9pm',
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.time3,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
            activeColor: Colors.teal,
          ),
        ),
      ],
    );
  }
}
