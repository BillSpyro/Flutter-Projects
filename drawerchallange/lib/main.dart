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
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Title'),subtitle: Text('Subtitle'),),
                ListTile(leading: Icon(Icons.email),
                title: Text('Inbox'),),
                ListTile(leading: Icon(Icons.outbox),
                  title: Text('Outbox'),),
                ListTile(leading: Icon(Icons.favorite),
                  title: Text('Favorites'),),
                ListTile(leading: Icon(Icons.archive),
                  title: Text('Archive'),),
                ListTile(leading: Icon(Icons.delete),
                  title: Text('Trash'),),
                ListTile(leading: Icon(Icons.stop),
                  title: Text('Spam'),),
                ListTile(subtitle: Text('Labels'),),
                ListTile(leading: Icon(Icons.label),
                  title: Text('Family'),),
                ListTile(leading: Icon(Icons.label),
                  title: Text('Friends'),),
                ListTile(leading: Icon(Icons.label),
                  title: Text('Work'),),
                ListTile(leading: Icon(Icons.settings),
                  title: Text('Settings & Account'),),
              ]
            )
          ),
        )
    );
  }
}

