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
    body: ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text('ListViews'),
            tileColor: Colors.green,
          ),
        ),
        Card(
          child: ListTile(
              leading: Image.network('https://static.bhphotovideo.com/explora/sites/default/files/ts-space-sun-and-solar-viewing-facts-versus-fiction.jpg',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fitWidth),
              title: Text('Sun')
          ),
        ),
        Card(
          child: ListTile(
              leading: Image.network('https://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fitWidth),
              title: Text('Moon')
          ),
        ),
        Card(
          child: ListTile(
              leading: Image.network('https://earthsky.org/upl/2017/09/gamma-cephei-quickV-Palomar-V-25x25-band.gif',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fitWidth),
              title: Text('Star')
          ),
        ),
      ]
    )
    )
    );
  }
}
