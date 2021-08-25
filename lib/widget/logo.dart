import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget get tarangLogo {
  return Row(
    children: <Widget>[
      Text(
        'Tarang',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: Icon(
          Icons.sports_soccer,
          size: 15,
          color: Colors.white,
        ),
      ),
      Text(
        'Mobile',
        style: GoogleFonts.lato(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
