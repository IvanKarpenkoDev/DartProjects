import 'package:flutter/material.dart';
import 'package:flutter_application_1/fivenScreen.dart';
import 'package:flutter_application_1/fourthScreen.dart';
import 'package:flutter_application_1/lastScreen.dart';
import 'package:flutter_application_1/new.dart';
import 'package:flutter_application_1/secnodScreen.dart';
import 'package:flutter_application_1/sevenScreen.dart';
import 'package:flutter_application_1/sixScreen.dart';
import 'package:flutter_application_1/thirdScreen.dart';

import 'listView.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData.light(),
      // home: FivenScreen(),
      home: PageView(
        scrollDirection: Axis.vertical,
        children: [
          FirstPage(),
          SecondScreen(),
          ThirdScreen(),
          FourthScreen(),
          FivenScreen(),
          SixScreen(),
          SevenScreen(),
          LastScreen(),
          CalcApp1()
        ],
      ),
    );
    // return MaterialApp(
    //   onGenerateRoute: (settings) {
    //     if (settings.name == '/listView') {
    //       return MaterialPageRoute(builder: (context) => ListViewScreen());
    //     }
    //     // Другие маршруты
    //   },
    //   // Другие настройки приложения
    // );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF039EA2),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 102)),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      'medinow',
                      style: TextStyle(
                          fontSize: 38.0,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Meditate With Us!',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Padding(padding: EdgeInsets.only(top: 45)),
                    Container(
                      width: 342,
                      height: 50,
                      child: ElevatedButton(
                        child: Text(
                          'Sign in with Apple',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), // Здесь задайте радиус закругления
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 12)),
                    Container(
                      width: 342,
                      height: 50,
                      child: ElevatedButton(
                        child: Text(
                          'Continue with Email or Phone',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 205, 253, 254),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), // Здесь задайте радиус закругления
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'Continue With Google',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Padding(padding: EdgeInsets.only(top: 90)),
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/bg.png'),
                      )),
                    ),
                  ],
                ),
              )
            ])));
  }
}
