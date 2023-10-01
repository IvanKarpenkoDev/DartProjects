import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CalcButton.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcApp1 extends StatefulWidget {
  const CalcApp1({Key? key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp1> {
  TextEditingController _textController = TextEditingController();
  String _history = '';

  void numClick(String text) {
    setState(() {
      _textController.text += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _textController.text = '';
    });
  }

  void clear(String text) {
    setState(() {
      _textController.text = '';
    });
  }

  void convertToBinary(String text) {
    setState(() {
      try {
        double decimalValue = double.parse(_textController.text);
        int intValue = decimalValue.truncate(); // Convert to integer
        _textController.text = intValue.toRadixString(2);
      } catch (e) {
        _textController.text = 'Error';
      }
    });
  }

  void convertToOctal(String text) {
    setState(() {
      try {
        double decimalValue = double.parse(_textController.text);
        int intValue = decimalValue.truncate(); // Convert to integer
        _textController.text = intValue.toRadixString(8);
      } catch (e) {
        _textController.text = 'Error';
      }
    });
  }

  void convertToHex(String text) {
    setState(() {
      try {
        double decimalValue = double.parse(_textController.text);
        int intValue = decimalValue.truncate(); // Convert to integer
        _textController.text = intValue.toRadixString(16);
      } catch (e) {
        _textController.text = 'Error';
      }
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_textController.text);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _textController.text;
      _textController.text = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 48, 48, 48),
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    _history,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF545F61),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              TextField(
                controller: _textController,
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 40),
              // Остальная часть вашего виджета без изменений
               Container(
                height: 50,
                child: Row(
                  children: [
                    CalcButton(
                      text: 'BIN',
                      textSize: 14,
                      callback: convertToBinary,
                    ),
                    CalcButton(
                        text: 'HEX', textSize: 14, callback: convertToHex),
                    CalcButton(
                      text: 'OCT',
                      textSize: 14,
                      callback: convertToOctal,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: 'AC',
                    textSize: 20,
                    callback: allClear,
                  ),
                  CalcButton(
                    text: 'C',
                    callback: clear,
                  ),
                  CalcButton(
                    text: '%',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '/',
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '7',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '8',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '9',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '*',
                    textSize: 24,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '4',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '5',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '6',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '-',
                    textSize: 38,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '1',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '2',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '3',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '+',
                    textSize: 30,
                    callback: numClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '.',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '0',
                    callback: numClick,
                  ),
                  CalcButton(
                    text: '00',
                    callback: numClick,
                    textSize: 26,
                  ),
                  CalcButton(
                    text: '=',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    callback: evaluate,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
