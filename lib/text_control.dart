import 'package:flutter/material.dart';

import './my_text.dart';

class TextControl extends StatefulWidget {
  final bool initialButtonValue;
  final Function updateText;

  // Constructor
  TextControl({
    this.initialButtonValue = true,
    this.updateText,
    });

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  bool _buttonValue = false;

  @override
  void initState() {
    super.initState();
    _buttonValue = widget.initialButtonValue;
  }

  @override
  void didUpdateWidget(TextControl oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
        Alignment.center,
      margin:
        EdgeInsets.all(10.0),
      child:
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _buttonValue = !_buttonValue ;
                });
              widget.updateText(_buttonValue);
            },
            child: MyText(_buttonValue ? "Toggle Text" : "Text Toggled"),
          ),
    );
  }
}