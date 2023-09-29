import 'package:flutter/material.dart';

class SevenScreen extends StatelessWidget {
  const SevenScreen({super.key});

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
                  width: 20), // Расстояние между квадратной кнопкой и текстом
              Text(
                "My E-Wallet",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black, // Цвет текста
                  fontSize: 26,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Padding(
                padding: EdgeInsets.all(24),
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Row(
                          children: [
                            Text("Ivan Karpenko",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                            Spacer(),
                            Text(
                              "VISA",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.card_giftcard,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Row(
                          children: [
                            Text("**** **** **** 3629",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                        child: Row(
                          children: [
                            Text("Your balance",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                        child: Row(
                          children: [
                            Text("\$9,379",
                                style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            Spacer(),
                            Container(
                              width: 110,
                              height: 35,
                              child: ElevatedButton(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.download,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Top Up',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 205, 253, 254),
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
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Transaction History",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Text("See All",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage('assets/Image.png'),
                              ),
                            )),
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lawson Chair",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Dec 15, 2024 | 10:00 AM",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("120\$",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Orders",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage('assets/Image.png'),
                              ),
                            )),
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lawson Chair",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Dec 15, 2024 | 10:00 AM",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("120\$",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Orders",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage('assets/Image.png'),
                              ),
                            )),
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lawson Chair",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Dec 15, 2024 | 10:00 AM",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("120\$",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Orders",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage('assets/Image.png'),
                              ),
                            )),
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lawson Chair",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Dec 15, 2024 | 10:00 AM",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("120\$",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Orders",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage('assets/Image.png'),
                              ),
                            )),
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lawson Chair",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Dec 15, 2024 | 10:00 AM",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("120\$",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Orders",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 35,
                            ),
                            Text("Home")
                          ],
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.shop_sharp,
                              size: 35,
                            ),
                            Text("Cart")
                          ],
                        ),
                          SizedBox(
                          width: 33,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.card_travel,
                              size: 35,
                            ),
                            Text("Orders")
                          ],
                        ),
                          SizedBox(
                          width: 33,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.wallet,
                              size: 35,
                            ),
                            Text("Wallet")
                          ],
                        ),
                          SizedBox(
                          width: 33,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 35,
                            ),
                            Text("Profile")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ])));
  }
}
