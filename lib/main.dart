import 'package:flutter/material.dart';

import './text_control.dart';

// Main entry point
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        body: TextControl(),
      ),
    ); // usage of parenthesis is same as using "new"
  }
}