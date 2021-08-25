import 'package:flutter/material.dart';
import 'package:tarang_mobile/screen/Home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primaryColor: Color(0xFF373856),
        accentColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
