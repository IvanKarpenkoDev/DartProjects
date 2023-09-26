import 'package:flutter/material.dart';

class FivenScreen extends StatefulWidget {
  const FivenScreen({super.key});

  @override
  State<FivenScreen> createState() => _FivenScreenState();
}

class _FivenScreenState extends State<FivenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffFAF6F5),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: ListView(
            padding: const EdgeInsets.only(bottom: 30),
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                           'assets/img.png'
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 48,
                              width: 48,
                              margin: const EdgeInsets.only(top: 35, left: 15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(.7),
                              ),
                              child: const Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: CustomPaint(
                              painter: ShapesPainter(),
                              child: Container(
                                height: 0,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFAF6F5),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 101,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFAF6F5),
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFE7A15),
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 80,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Secrets of Atlantis',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: 'Mon',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 38,
                    width: 138,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffFE7A15),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Follow',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFE7A15),
                        fontFamily: 'Mon',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 270,
                        decoration: const BoxDecoration(
                          color: Color(0xff403285),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 27, right: 19, left: 19, bottom: 14),
                                color: const Color(0xff403285),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Codin',
                                              style: TextStyle(
                                                fontFamily: 'Mon',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              height: 21,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff262044),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 0),
                                              child: const Text(
                                                'Host',
                                                style: TextStyle(
                                                  fontFamily: 'Mon',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Flexible(
                                          child: RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwat... ',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Mon',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'see more',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Mon',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 9, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff271D5A),
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '4.8',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Icon(Icons.star_border_rounded),
                                              Text(
                                                '(10)',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 3,
                                          width: 3,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 13, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff271D5A),
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                'Fantasy',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.notifications_outlined,
                                          size: 30,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 78,
                              color: const Color(0xff1D0F5A),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 161,
                                    child: Stack(
                                      children: List.generate(
                                        5,
                                        (index) => Align(
                                          alignment: index == 4
                                              ? Alignment(-1 + index / 2.3, 0)
                                              : Alignment(-1 + index / 2.45, 0),
                                          child: Container(
                                            width: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: index == 4
                                                  ? const Color(0XFFFE7A15)
                                                  : Colors.white,
                                              border: Border.all(
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.wifi_tethering_outlined,
                                    color: Color(0xffF24E1E),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  const Text(
                                    'Live',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xffF24E1E),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Mon"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 136,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffF8D910),
                    ),
                    padding: const EdgeInsets.only(
                        left: 4, top: 4, right: 21, bottom: 11),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/Union.png'),
                       
                        const SizedBox(
                          width: 13,
                        ),
                        const Flexible(
                          child: Text(
                            'Invite your friends to join',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontFamily: 'Mon',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(
                          Icons.share,
                          color: Color(0xff3B3838),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  final double _kCurveHeight = 63.4;
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height);
    p.relativeQuadraticBezierTo(
        size.width / 2, 1.55 * -_kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);

    p.close();

    canvas.drawPath(p, Paint()..color = const Color(0xffFAF6F5));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
