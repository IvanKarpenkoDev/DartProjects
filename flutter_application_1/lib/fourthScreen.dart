import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Прозрачный фон
          elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: 24,
              ), // Расстояние между квадратной кнопкой и текстом
              Text(
                "Meditate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Цвет текста
                  fontSize: 20,
                ),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search_sharp,
              size: 28,
              color: Colors.black,
            ),
            SizedBox(
              width: 26,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0), // Высота подчеркивания
            child: Divider(
              color: Color.fromARGB(45, 0, 0, 0), // Цвет подчеркивания
              thickness: 0.5, // Толщина подчеркивания
            ),
          ),
        ),
        body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 23,
                ),
                Container(
                  width: 35,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromARGB(255, 3, 157, 162)),
                  child: Center(
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 104,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromARGB(255, 230, 254, 255)),
                  child: Center(
                    child: Text(
                      "Bible In a Year",
                      style: TextStyle(color: Color.fromARGB(255, 3, 157, 162)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 61,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromARGB(255, 230, 254, 255)),
                  child: Center(
                    child: Text(
                      "Dailies",
                      style: TextStyle(color: Color.fromARGB(255, 3, 157, 162)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 69,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromARGB(255, 230, 254, 255)),
                  child: Center(
                    child: Text(
                      "Minutes",
                      style: TextStyle(color: Color.fromARGB(255, 3, 157, 162)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 69,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromARGB(255, 230, 254, 255)),
                  child: Center(
                    child: Text(
                      "November",
                      style: TextStyle(color: Color.fromARGB(255, 3, 157, 162)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Column(children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 23, right: 23.75),
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 242, 200, 76),
                          image: DecorationImage(
                            image: AssetImage('assets/sun.png'),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 13)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 36, right: 28),
                          child: Text(
                            "A Song of Moon",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 36, right: 24),
                          child: Text(
                            'Start with the basics',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 30, 30, 30),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Icon(Icons.favorite_border_outlined),
                    Text(
                      "9 Sessions",
                      style: TextStyle(color: Color.fromRGBO(1, 1, 1, 0.7)),
                    ),
                    Spacer(),
                    Text("Start"),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 12,
                    ),
                    SizedBox(
                      width: 58,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 14)),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 98,
                                width: 166,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 242, 167, 76),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Vector.png'),
                                  ),
                                ),
                                child: Container()),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text(
                                "The Sleep Hour",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text("Ashna Mukherjee",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromRGBO(1, 1, 1, 0.6))),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "9 Sessions",
                                  style: TextStyle(
                                      color: Color.fromRGBO(1, 1, 1, 0.7),
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Start",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 6,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 8, right: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 98,
                                width: 166,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 242, 200, 76),
                                  image: DecorationImage(
                                    image: AssetImage('assets/sun2.png'),
                                  ),
                                ),
                                child: Container()),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Easy on the Mission",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.00001,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text("Peter Mach",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.00001,
                                      color: Color.fromRGBO(1, 1, 1, 0.6))),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "5 minutes",
                                  style: TextStyle(
                                      color: Color.fromRGBO(1, 1, 1, 0.7),
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Start",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 6,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 98,
                                width: 166,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 47, 129, 237),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/freepik--World--inject-94.png'),
                                  ),
                                ),
                                child: Container()),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text(
                                "Relax with Me",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text("Amanda James",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromRGBO(1, 1, 1, 0.6))),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "3 Sessions",
                                  style: TextStyle(
                                      color: Color.fromRGBO(1, 1, 1, 0.7),
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Start",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 6,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 8, right: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 98,
                                width: 166,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 3, 157, 162),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Vector.png'),
                                  ),
                                ),
                                child: Container()),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Sun and Energy",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.00001,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text("Micheal Hiu",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.00001,
                                      color: Color.fromRGBO(1, 1, 1, 0.6))),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "5 minutes",
                                  style: TextStyle(
                                      color: Color.fromRGBO(1, 1, 1, 0.7),
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Start",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 6,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ]))
        ])));
  }
}
