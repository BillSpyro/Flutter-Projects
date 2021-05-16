import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      // Column is a vertical, linear layout.
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded (
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                     constraints: BoxConstraints.expand(),
                    color: Color.fromARGB(255, 66, 165, 245),
                    child: Text("Strawberry Pavlova"
                    )
                  )
                ),
                Expanded (
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                    color: Color.fromARGB(255, 66, 165, 245),
                      child: Text("Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream."
                      )
                  )
                ),
                Expanded (
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                        color: Color.fromARGB(255, 66, 165, 245),
                          child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text("* * * * *"
                              )
                            ),
                            Expanded(
                                child: Text("170 Reviews"
                                )
                            ),
                          ]
                    )
                    )
                ),
                Expanded (
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                        color: Color.fromARGB(255, 66, 165, 245),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded (
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text("^"
                                )
                              ),
                              Expanded(
                                  child: Text("PREP"
                                  )
                              ),
                              Expanded(
                                  child: Text("25 min"
                                  )
                              ),
                            ]
                          )
                        ),
                        Expanded (
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Text("^"
                                      )
                                  ),
                                  Expanded(
                                      child: Text("COOK"
                                      )
                                  ),
                                  Expanded(
                                      child: Text("1 hr"
                                      )
                                  ),
                                ]
                            )
                        ),
                        Expanded (
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Text("^"
                                      )
                                  ),
                                  Expanded(
                                      child: Text("FEEDS"
                                      )
                                  ),
                                  Expanded(
                                      child: Text("4-6"
                                      )
                                  ),
                                ]
                            )
                        ),
                      ]
                    )
                    )
                ),
              ],
            )
          ),
          Expanded(
            child: Image.asset('assets/images/SilverShield.jpg'),
          ),
        ],
      )
    );
  }
}
