import 'package:flutter/material.dart';

Widget get footballtable {
  return Row(
    children: <Widget>[
      Text(
        'Football',
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Icon(
          Icons.sports_soccer,
          size: 15,
          color: Colors.white,
        ),
      ),
      Text(
        'Table',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
