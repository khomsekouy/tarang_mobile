import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarang_mobile/widget/card_foot_ball.dart';
import 'package:tarang_mobile/widget/logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> containers = [
    Container(
      child: Cardfootball(),
    ),
    Container(
      child: Cardfootball(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: new AppBar(
          title: tarangLogo,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'FOOT BALL',
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'VOLLEY BALL',
                  style: GoogleFonts.lato(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: new Drawer(),
        bottomNavigationBar: Container(
          height: 120.0,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          color: Color(0xFF373856),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/img/Icon7.png',
                  height: 60,
                  width: 60,
                ),
                Image.asset(
                  'assets/img/Icon8.png',
                  height: 60,
                  width: 60,
                ),
                Image.asset(
                  'assets/img/Icon9.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
