import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Color Changer'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amberAccent,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.grey,
    Colors.cyan,
    Colors.brown,
    Colors.green,
    Colors.purple,
    Colors.lime,
  ];

  var defaultColor = Colors.white;
  var buttonColor = Colors.black;

  colorChanger() {
    var rnd = Random().nextInt(colors.length);
    var rnd2 = Random().nextInt(colors.length);
    setState(() {
      defaultColor = colors[rnd];
      buttonColor = colors[rnd2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultColor,
      child: Center(
        child: ElevatedButton(
          onPressed: colorChanger,
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            elevation: 10.0,
            padding: EdgeInsets.all(13.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            'Click to change color',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
