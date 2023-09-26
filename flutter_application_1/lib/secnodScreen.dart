import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(left: 23, right: 23),
                height: 219,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 242, 200, 76),
                  image: const DecorationImage(
                    image: AssetImage('assets/personBg.png'),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 13)),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    "Peter Mach",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 1)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 26, right: 28),
                  child: Text(
                    "Mind Deep Relax",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 30, 30, 30),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 24)),
              Container(
                width: 342,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF039EA2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Выравнивание по центру
                    children: [
                      Image.asset(
                          'assets/play.png'), // Замените на путь к вашей иконке
                      SizedBox(width: 10), // Расстояние между иконкой и текстом
                      Text(
                        'Play Next Session',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(225, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 24)),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 28),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Цвет обводки
                        width: 0.3, // Ширина обводки
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets
                                .zero, // Убрать внутренний отступ у кнопки
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 29, // Задайте желаемую ширину контейнера
                            height: 29, // Задайте желаемую высоту контейнера
                            child: Image.asset(
                              'assets/play.png', // Замените на путь к вашему изображению
                              fit: BoxFit
                                  .contain, // Масштабировать изображение, чтобы оно вместилось в контейнер
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 13)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sweet Memories",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Text(
                            "December 29 Pre-Launch",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(1, 1, 1, 0.5)),
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Color.fromRGBO(1, 1, 1, 0.5),
                          ))
                    ],
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 24, right: 28),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Цвет обводки
                        width: 0.3, // Ширина обводки
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                             backgroundColor: Color.fromARGB(255, 3, 157, 162),
                            padding: EdgeInsets
                                .zero, // Убрать внутренний отступ у кнопки
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 29, // Задайте желаемую ширину контейнера
                            height: 29, // Задайте желаемую высоту контейнера
                            child: Image.asset(
                              'assets/play.png', // Замените на путь к вашему изображению
                              fit: BoxFit
                                  .contain, // Масштабировать изображение, чтобы оно вместилось в контейнер
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 13)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "A Day Dream",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Text(
                            "December 29 Pre-Launch",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(1, 1, 1, 0.5)),
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Color.fromRGBO(1, 1, 1, 0.5),
                          ))
                    ],
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 24, right: 28),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Цвет обводки
                        width: 0.3, // Ширина обводки
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 240, 146, 53),
                            padding: EdgeInsets
                                .zero, // Убрать внутренний отступ у кнопки
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 29, // Задайте желаемую ширину контейнера
                            height: 29, // Задайте желаемую высоту контейнера
                            child: Image.asset(
                              'assets/play.png', // Замените на путь к вашему изображению
                              fit: BoxFit
                                  .contain, // Масштабировать изображение, чтобы оно вместилось в контейнер
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 13)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mind Explore",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Text(
                            "December 29 Pre-Launch",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(1, 1, 1, 0.5)),
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Color.fromRGBO(1, 1, 1, 0.5),
                          ))
                    ],
                  ),
                ),
              )
            ]),
          )
        ])));
  }
}
