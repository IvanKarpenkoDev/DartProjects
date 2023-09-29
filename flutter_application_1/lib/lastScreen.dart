import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 246, 249, 1),
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Прозрачный фон
          elevation: 0, // Убрать тень AppBar

          title: Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 33, 96, 243),
              ),
              SizedBox(
                  width: 20), // Расстояние между квадратной кнопкой и текстом
              Text(
                "Organizer",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black, // Цвет текста
                  fontSize: 26,
                ),
              ),
            ],
          ),
          actions: [
            Container(
              width: 56, // Желаемая ширина квадратной кнопки
              height: 32, // Желаемая высота квадратной кнопки
              decoration: BoxDecoration(
                color: Color.fromARGB(88, 48, 97, 243),
                // Цвет квадратной кнопки
                borderRadius:
                    BorderRadius.circular(10.0), // Радиус закругления углов
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 24,
            )
          ],
        ),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              const SizedBox(height: 26),
              Center(
                  child: Column(
                children: [
                  Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image: AssetImage('assets/imgperson.png'),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Albert Flores",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 90,
                      ),
                      Column(
                        children: [
                          Text(
                            "2.368",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Text(
                            "346",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          Text(
                            "13",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Events",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 34,
                      ),
                      Container(
                        width: 150,
                        height: 45,
                        child: ElevatedButton(
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_2,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 102, 47, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Здесь задайте радиус закругления
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        width: 150,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Color.fromARGB(255, 102, 47, 255),
                          ),
                        ),
                        child: ElevatedButton(
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_2,
                                  color: Color.fromARGB(255, 102, 47, 255),
                                ),
                                Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 102, 47, 255),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Здесь задайте радиус закругления
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 140,
                      ),
                      Container(
                        width: 110,
                        height: 45,
                        child: ElevatedButton(
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'About',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 102, 47, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Здесь задайте радиус закругления
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 110,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Color.fromARGB(255, 102, 47, 255),
                          ),
                        ),
                        child: ElevatedButton(
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Events',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 102, 47, 255),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Здесь задайте радиус закругления
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 110,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Color.fromARGB(255, 102, 47, 255),
                          ),
                        ),
                        child: ElevatedButton(
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Reviews',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 102, 47, 255),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Здесь задайте радиус закругления
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              )),
              Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10,),
                        Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Read more...",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ))
            ])));
  }
}
