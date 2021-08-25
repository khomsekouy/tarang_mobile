import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String image;
  String text;
  Color color;
  Category({
    required this.image,
    required this.text,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color(0xff3d416e),
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              width: 120,
              height: 120,
            ),
            Text(
              text,
              style: GoogleFonts.lato(
                color: color,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
