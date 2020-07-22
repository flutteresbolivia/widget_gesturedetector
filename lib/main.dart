import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color initColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                initColor = Colors.orange;
              });
            },
            onDoubleTap: () {
              setState(() {
                initColor = Colors.red;
              });
            },
            child: Icon(
              Icons.access_alarm,
              size: 100,
              color: initColor,
            ),
          ),
        ),
      ),
    );
  }
}
