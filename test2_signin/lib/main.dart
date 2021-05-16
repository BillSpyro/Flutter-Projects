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
            body: Container(
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Text("Create a new Account",
                          style: TextStyle(color: Colors.black, fontSize: 30))),

                  Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children:[
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Username",
                                style: TextStyle(color: Colors.black))),
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Email",
                                style: TextStyle(color: Colors.black))),
                        Container(
                            alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "password",
                              style: TextStyle(color: Colors.black),
                            )),
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Full Name",
                                style: TextStyle(color: Colors.black))),
                      ])
                  ),

                  Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children:[
                        Container(alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Signup",
                                style: TextStyle(color: Colors.black))),
                        Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "Back",
                              style: TextStyle(color: Colors.black),
                            ))
                      ])
                  ),

                ]))));
  }
}
