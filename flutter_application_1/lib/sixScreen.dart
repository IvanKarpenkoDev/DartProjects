import 'package:flutter/material.dart';

class SixScreen extends StatelessWidget {
  const SixScreen({super.key});

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
                  color: Color.fromRGBO(
                      244, 63, 94, 0.10), // Цвет квадратной кнопки
                  borderRadius:
                      BorderRadius.circular(10.0), // Радиус закругления углов
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color.fromRGBO(244, 63, 94, 0.70),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                  width: 20), // Расстояние между квадратной кнопкой и текстом
              Text(
                "Popular Menu",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black, // Цвет текста
                  fontSize: 26,
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
              const SizedBox(height: 36),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 290,
                      child: TextField(
                        style: const TextStyle(
                          color: Color(0xff020202),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 28),
                          filled: true,
                          fillColor: Color.fromARGB(21, 186, 186, 186),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search",
                          hintStyle: const TextStyle(
                              color: Color(0xffb2b2b2),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                              decorationThickness: 6),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          prefixIconColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(244, 63, 94, 0.10)),
                      child: Center(
                        child: Icon(
                          Icons.menu,
                          color: Color.fromRGBO(244, 63, 94, 0.70),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 224, 224, 224)
                              .withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/Image.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Original Salad",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lovy Food",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$8",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(244, 63, 93, 0.999),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 224, 224, 224)
                              .withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/Image.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Original Salad",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lovy Food",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$8",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(244, 63, 93, 0.999),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 224, 224, 224)
                              .withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/Image.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Original Salad",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lovy Food",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$8",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(244, 63, 93, 0.999),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 224, 224, 224)
                              .withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/Image.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Original Salad",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lovy Food",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$8",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(244, 63, 93, 0.999),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 224, 224, 224)
                              .withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/Image.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Original Salad",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lovy Food",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$8",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(244, 63, 93, 0.999),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 91,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 224, 224, 224).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 68, 99, 0.163),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Color.fromRGBO(244, 63, 93, 0.999),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(244, 63, 93, 0.999),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Icon(
                        Icons.shop,
                        color: Color.fromRGBO(244, 63, 93, 0.999),
                      ),
                       SizedBox(
                        width: 45,
                      ),
                      Icon(
                        Icons.message,
                        color: Color.fromRGBO(244, 63, 93, 0.999),
                      ),
                       SizedBox(
                        width: 45,
                      ),
                      Icon(
                        Icons.person,
                        color: Color.fromRGBO(244, 63, 93, 0.999),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
