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
                        color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    width: 300,
                    height: 150,
                    alignment: Alignment.centerLeft,
                    child: Container(
    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        )
    ),
                        width: 200,
                        height: 150,
                    alignment: Alignment.center,
                    child: Text(
                      "Challenge",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                )
                )
            )
        )
    );
  }
}

