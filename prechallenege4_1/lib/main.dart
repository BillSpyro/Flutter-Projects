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
    body: Column(children: [ Expanded(child: Stack(alignment: Alignment.bottomRight, children: <Widget>[
      Container(child: Image.network('https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80')),
      Container(child: Text('James Conoway',
          style: TextStyle(color: Colors.white, fontSize: 30)), alignment: Alignment.bottomCenter,
      )]
    )), Expanded(child: Stack(alignment: Alignment.bottomRight, children: <Widget>[
      Container(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwFmwfdR4ZIq-xSgksAE6QYFjDl-4yqgiJ7Q&usqp=CAU')),
      Container(child: Text('Tom Thunk',
      style: TextStyle(color: Colors.white, fontSize: 20),), margin: EdgeInsets.only(bottom: 40, right: 40),
      )] )
      )])));}
}


