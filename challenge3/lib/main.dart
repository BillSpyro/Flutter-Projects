import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        ),
          body: Container(
            alignment: Alignment.topCenter,
            child: Container(
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border:Border.all(
                color: Colors.orange,
                    width: 8,
              )
            ),
            width: 150,
            height: 150,
            alignment: Alignment.center,
            child: Text(
              "H",
              style: TextStyle(fontSize: 70, color: Colors.orange),
              textAlign: TextAlign.center,
            )
            )
          )
        )
    );
  }
}

