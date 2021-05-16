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
            leading: Icon(Icons.arrow_back),
            title: Text('Bob Furgoeson'),
            actions: [
              Icon(Icons.phone),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.video_call),
              ),
            ],
            backgroundColor: Colors.orange,),
          persistentFooterButtons: [
          RaisedButton(
          elevation: 10.0,
          onPressed: () {},
          color: Colors.green,
          child: Text('Type your message here                                      '),
        ),],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              fixedColor: Colors.teal,
              items: [BottomNavigationBarItem(
                title: Text("Home"),
                icon: Icon(Icons.home),
              ),
                BottomNavigationBarItem(
                  title: Text("Attach"),
                  icon: Icon(Icons.link),
                ),
                BottomNavigationBarItem(
                  title: Text("Voice"),
                  icon: Icon(Icons.mic),
                ),],
            ),
            body: Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container( alignment: Alignment.centerRight,
                    child: Container(alignment: Alignment.centerRight,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(color: Colors.blue,),
                        child: Text("Hello",
                            style: TextStyle(color: Colors.black)))),
                    Container(alignment: Alignment.centerLeft,
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(color: Colors.orange,),
                        child: Text(
                          "Hi how are you?",
                          style: TextStyle(color: Colors.black),
                        ))),
                Container(alignment: Alignment.centerLeft,
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(color: Colors.orange,),
                        child: Text(
                          "Are you doing anything today?",
                          style: TextStyle(color: Colors.black),
                        ))),
                Container( alignment: Alignment.centerRight,
                    child: Container(alignment: Alignment.centerRight,
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(color: Colors.blue,),
                        child: Text("No, not anything special",
                            style: TextStyle(color: Colors.black)))),
                Container(alignment: Alignment.centerLeft,
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 220,
                        decoration: BoxDecoration(color: Colors.orange,),
                        child: Text(
                          "Well then maybe we can hang out",
                          style: TextStyle(color: Colors.black),
                        ))),
                Container( alignment: Alignment.centerRight,
                    child: Container(alignment: Alignment.centerRight,
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(color: Colors.blue,),
                        child: Text("Sure, that sounds like fun",
                            style: TextStyle(color: Colors.black)))),

              ]
            ))
    ));
  }
}

