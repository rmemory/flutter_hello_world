import 'package:flutter/material.dart';

// A contrived wrapper around a Text widget
class MyText extends StatelessWidget {
  final String buttonText;

  // Constructor
  MyText([this.buttonText = ""]);

  @override
  Widget build(BuildContext context) {
    return Text(buttonText);
  }
}