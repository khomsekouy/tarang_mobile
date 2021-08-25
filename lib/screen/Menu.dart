import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color warna;
  const Menu(
      {Key? key, required this.title, required this.icon, required this.warna})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: warna,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
