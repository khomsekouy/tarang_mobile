import 'package:flutter/material.dart';
import 'package:tarang_mobile/screen/select_time_of_day.dart';
import 'package:tarang_mobile/screen/home_screendate.dart';
import 'package:tarang_mobile/widget/category.dart';

class Cardfootball extends StatelessWidget {
  const Cardfootball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff363567),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                child: Category(
                                  image: 'assets/img/Icon1.png',
                                  text: 'Foot Ball',
                                  color: Color(0xff47b4ff),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreenDate(),
                                    ),
                                  );
                                },
                              ),
                              GestureDetector(
                                child: Category(
                                  image: 'assets/img/Icon7.png',
                                  text: 'Transport',
                                  color: Color(0xFFA885FF),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                child: Category(
                                  image: 'assets/img/Icon3.png',
                                  text: 'Foot Ball',
                                  color: Color(0xff47b4ff),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyHomePage(),
                                    ),
                                  );
                                },
                              ),
                              Category(
                                image: 'assets/img/Icon4.png',
                                text: 'Foot Ball',
                                color: Color(0xff47b4ff),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Category(
                                image: 'assets/img/Icon5.png',
                                text: 'Foot Ball',
                                color: Color(0xff47b4ff),
                              ),
                              Category(
                                image: 'assets/img/Icon6.png',
                                text: 'Foot Ball',
                                color: Color(0xff47b4ff),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
