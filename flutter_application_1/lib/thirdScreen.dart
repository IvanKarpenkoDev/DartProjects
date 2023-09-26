import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 246, 249, 1),
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Прозрачный фон
          elevation: 0, // Убрать тень AppBar

          title: Row(
            children: [
              Container(
                width: 42, // Желаемая ширина квадратной кнопки
                height: 42, // Желаемая высота квадратной кнопки
                decoration: BoxDecoration(
                  color:
                      Color.fromARGB(34, 48, 79, 254), // Цвет квадратной кнопки
                  borderRadius:
                      BorderRadius.circular(10.0), // Радиус закругления углов
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color.fromARGB(163, 48, 79, 254),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                  width: 20), // Расстояние между квадратной кнопкой и текстом
              Text(
                "3D Design Basic",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Цвет текста
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              SizedBox(height: 29),
              Align(
                alignment: Alignment.topCenter,
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/Rectangle.png'),
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 43,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(48, 79, 254, 0.10),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 2)),
                          Image.asset(
                            'assets/people.png',
                            scale: 0.6,
                          ),
                          Text(
                            ' 4.569',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(73, 70, 255, 1)),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    Container(
                      width: 80,
                      height: 43,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(48, 79, 254, 0.10),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 2)),
                          Image.asset(
                            'assets/star.png',
                            scale: 0.6,
                          ),
                          Text(
                            ' 4.9',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(73, 70, 255, 1)),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 12)),
                    Container(
                      width: 97,
                      height: 33,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(180, 48, 79, 254),
                          padding: EdgeInsets
                              .zero, // Убрать внутренний отступ у кнопки
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Center(child: Text("Best Seller")),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Text(
                  "3D Design Basic",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Text(
                  "In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Row(
                  children: [
                    Text(
                      "24 Lessons (20 hours)",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 48, 79, 254)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Container(
                    height: 92,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 28),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/Image.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Introduction to 3D",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text("20 mins",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.check_circle_outline,
                            size: 24,
                            color: Color.fromARGB(255, 48, 79, 254)
                          )
                        ],
                      ),
                    )),
              )
            ])));
  }
}
