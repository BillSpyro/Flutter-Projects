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
                decoration: BoxDecoration(),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          child: ListTile(
                            leading: Icon(Icons.arrow_back),
                            trailing: Icon(Icons.line_weight),
                          )),
                      Container(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Ko Samui, Thailand',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  height: 300,
                                  width: 350,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container( width: 250, child: Image.network('https://upload.wikimedia.org/wikipedia/commons/8/80/Koh_Samui_Lipa_Noi2.jpg'))
                                        ,Container( child: Text('Lipo Nio Beach                     4.5 *'))
                                      ]))),
                      Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                    child: Text(
                                      'About',
                                      style: TextStyle(color: Colors.red),
                                      textAlign: TextAlign.center,
                                    )),
                                Expanded(
                                    child: Text(
                                      'Price',
                                      textAlign: TextAlign.center,
                                    )),
                                Expanded(
                                    child: Text(
                                      'Insurance',
                                      textAlign: TextAlign.center,
                                    )),
                              ])),
                      Container(
                          margin: EdgeInsets.all(
                              20.0),
                          child: Text("Ko Samui, Thailand’s second largest island, lies in the Gulf of Thailand off the east coast of the Kra Isthmus. It's known for its palm-fringed beaches, coconut groves and dense, mountainous rainforest, plus luxury resorts and posh spas. The landmark 12m-tall golden Big Buddha statue at Wat Phra Yai Temple is located on a tiny island connected to Ko Samui by a causeway.")),
                      Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 100,
                                height: 50,
                                alignment: Alignment.center,
                              child: Text('2,5000', style: TextStyle(color: Colors.white),)),
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 200,
                                height: 50,
                                alignment: Alignment.center,
                                child: Text('Buy Now', style: TextStyle(color: Colors.white),)),
                          ]))
                    ]))));
  }
}
