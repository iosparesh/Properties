import 'package:flutter/material.dart';
import 'package:test55/descendents/SAButton.dart';
import './descendents/textField.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cal11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Actions
  void loginButtonTouched() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              child: Image.asset(
                'Images/build.png',
                fit: BoxFit.cover,
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.8),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                width: 300,
                margin: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    SATextField(TextInputType.emailAddress, "Email", false),
                    SATextField(
                        TextInputType.visiblePassword, "Password", true),
                    SAButton("Login", loginButtonTouched),
                    FlatButton(
                      child: Text("Forgot Password?"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
