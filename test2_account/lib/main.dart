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
              title: Text('Your Profile'),
              backgroundColor: Colors.orange,),
            floatingActionButton: FloatingActionButton(
              elevation: 10.0,
              child: Icon(Icons.edit),

            ),
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
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Text("Charles Munce",
                          style: TextStyle(color: Colors.black, fontSize: 30))),
                  Container(
                      alignment: Alignment.center,
                      width: 250,
                      child: Image.network('https://cdn4.iconfinder.com/data/icons/flatfaces-everyday-people-circular/125/flatfaces23-512.png')),

                  Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children:[
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Relationship: Single",
                                style: TextStyle(color: Colors.black))),
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Job: Software Engineer",
                                style: TextStyle(color: Colors.black))),
                        Container(
                            alignment: Alignment.center,
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "Gender: Male",
                              style: TextStyle(color: Colors.black),
                            )),
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Location: US",
                                style: TextStyle(color: Colors.black))),
                      ])
                  ),

                ]))));
  }
}
