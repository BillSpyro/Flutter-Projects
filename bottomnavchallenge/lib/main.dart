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
          floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.add),

          ),
          persistentFooterButtons: [
            RaisedButton(
              elevation: 10.0,
              onPressed: () {},
              color: Colors.green,
              child: Icon(
                Icons.print,
                color: Colors.white,
              ),
            ),
            RaisedButton(
              elevation: 10.0,
              onPressed: () {},
              color: Colors.blueGrey,
              child: Icon(Icons.send,
              color: Colors.white)
            )
          ],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
                fixedColor: Colors.teal,
              items: [BottomNavigationBarItem(
                title: Text("Home"),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                title: Text("Search"),
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                title: Text("Add"),
                icon: Icon(Icons.add_box),
              ),],
            ),
          body: Container(
        ))
    );
  }
}

