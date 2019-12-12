import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SATextField extends StatelessWidget {
  final textFieldController = TextEditingController();
  final TextInputType type;
  final String placeHolder;
  final bool isObsure;
  final Color color;
  SATextField(this.type, this.placeHolder, this.isObsure, {this.color});

  @override
  Widget build(BuildContext context) {
    var textField = TextField(
            textAlign: TextAlign.center,
            controller: textFieldController,
            keyboardType: type,
            autofocus: true,
            obscureText: isObsure,
            decoration: InputDecoration(hintText: placeHolder, hintStyle: TextStyle(color: color)),
          );
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: Column(children: <Widget>[
          textField
        ],),     
    );
  }
}