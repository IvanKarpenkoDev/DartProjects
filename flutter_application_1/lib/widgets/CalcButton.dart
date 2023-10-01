import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String? text;
  final int? fillColor;
  final int? textColor;
  final double textSize;
  final Function? callback;

  const CalcButton({
    Key? key,
    this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Container(
        width: 80,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            callback!(text);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 95, 95, 95),
          ),
          child: Text(
            text!,
            style: TextStyle(fontSize: textSize, color: Color(0xFFFFFFFF)),
          ),
        ),
      ),
    );
  }
}
