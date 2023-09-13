import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData.dark(),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('asd'),
        foregroundColor: const Color.fromRGBO(245, 129, 255, 1),
        iconTheme: const IconThemeData(),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: const Color.fromRGBO(245, 129, 255, 1),
              onPressed: () {
                print("object");
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SafeArea(
          child: Center(
              child: Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 85, 85, 85),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "asd",
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(245, 129, 255, 1)),
                  )))),
    );
  }
}
