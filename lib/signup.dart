import 'package:flutter/material.dart';
import 'package:test55/descendents/SAButton.dart';
import './descendents/textField.dart';

class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  void signupButtonTouched() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cal11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SignUp"),
          leading: IconButton(
            icon: Icon(Icons.navigate_before),
            iconSize: 38,
            onPressed: () {
              Navigator.pop(context);
              },
          ),
        ),
        body: Stack(children: [
          Container(
            child: Image.asset(
              'Images/hdBuilding.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                  Padding(padding: EdgeInsets.only(top: 64),),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 56, 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        SATextField(TextInputType.text, "First Name", false, color: Colors.white,),
                        SATextField(TextInputType.text, "Last Name", false, color: Colors.white,),
                        SATextField(TextInputType.phone, "Phone", false, color: Colors.white,),
                        SATextField(TextInputType.emailAddress, "Email", false, color: Colors.white,),
                        SATextField(
                            TextInputType.visiblePassword, "Password", true, color: Colors.white,),
                        SATextField(TextInputType.visiblePassword,
                            "Confirm Password", true, color: Colors.white,),
                        SAButton("SignUp", signupButtonTouched),
                      ],
                    ),
                  ),
                
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
