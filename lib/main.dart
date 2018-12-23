import 'package:flutter/material.dart';

import './text_control.dart';

// Main entry point
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  static final String _theTrueString = "Press the button";
  static final String _theFalseString = "Button has been pressed";
  String _theString = _theTrueString;

  void _updateTheString(bool value) {
    setState(() {
      _theString = value ? _theTrueString : _theFalseString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
      ),
      home: Scaffold( 
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        // body is a Text and Button
        body: Column(
          children: <Widget>[
            Center(
              child: Text(_theString),
            ),
            TextControl(updateText: _updateTheString),
          ]
        ),
      ),
    ); // usage of parenthesis is same as using "new"
  }
}