import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80.0,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Color(0xFF373856),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'images/Icon7.png',
                height: 60,
                width: 60,
              ),
              Image.asset(
                'images/Icon8.png',
                height: 60,
                width: 60,
              ),
              Image.asset(
                'images/Icon9.png',
                height: 60,
                width: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
