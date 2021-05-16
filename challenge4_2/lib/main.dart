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
            appBar: AppBar(),
            body: Stack(alignment: Alignment.bottomRight, children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orange, Colors.redAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepOrange.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 10,) // changes position of shadow
                        ),
                      ],
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(25)),
                  width: 300,
                  height: 200,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(children: [
                          Expanded(
                              child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: ListTile(
                                      leading: Icon(Icons.card_giftcard)))),
                          Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                  child: Text('4000 1234 5678 9010',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)))),
                          Expanded(
                              child: Container(
                                  child: Column(children: [
                            Expanded(
                                child: Row(children: [
                              Expanded(
                                  child: Container(
                                      child: Column(children: [
                                Expanded(child: Container(
                                  child: Row(children: [Expanded(child: Container(
                                      child: Text('Valid From\n09/23',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white))
                                  )),
                                  Expanded(child: Container(
                                      child: Text('Valid Thru\n09/23',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white))
                                  ))])

                                )),
                                Expanded(
                                    child: Container(
                                        child: Text('Charles Max Crandall',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)))),
                              ])


                                      )),
                              Expanded(
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: ListTile(
                                          trailing: Icon(
                                              Icons.control_point_duplicate)))),
                            ]))
                          ])))
                        ]))
                      ])),
              Text(
                'm',
                style: TextStyle(
                    fontSize: 200,
                    fontWeight: FontWeight.bold,
                    color: Colors.white12),
              )
            ])));
  }
}
