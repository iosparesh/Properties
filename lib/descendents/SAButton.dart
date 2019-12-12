import 'package:flutter/material.dart'; 

class SAButton extends StatelessWidget {
  final String name;
  final Function buttonPressed;

  SAButton(this.name, this.buttonPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
        width: 212,
        child: FlatButton(child: Text(name), onPressed: buttonPressed, color: Colors.lightBlue),  
    );
  }
}