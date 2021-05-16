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
                      Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: ListTile(
                                leading: Image.network(
                                    'https://www.vhv.rs/dpng/d/454-4544542_doug-headshot-circular-circular-image-of-a-person.png',
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fitWidth),
                                trailing: Icon(Icons.bar_chart),
                              ))),
                      Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Search to your hearts content!',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ))),
                      Expanded(
                          child: Container(
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                            flex: 7,
                                            child: Text(
                                              'Search',
                                              textAlign: TextAlign.center,
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    right: 20.0),
                                                height: 60,
                                                color: Colors.pink,
                                                child: Icon(Icons.search)))
                                      ])))),
                      Expanded(
                          child: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [

                                Container(
                                  width: 50,
                                    height: 50,
                                    color: Colors.deepOrange,
                                    child: Icon(Icons.airplanemode_active)),
                            Container(
                                width: 50,
                                height: 50,
                                    color: Colors.deepOrange,
                                    child: Icon(
                                        Icons.airline_seat_individual_suite)),

                             Container(
                                 width: 50,
                                 height: 50,
                                    color: Colors.deepOrange,
                                    child: Icon(Icons.cast)),
                            Container(
                                width: 50,
                                height: 50,
                                    color: Colors.deepOrange,
                                    child: Icon(Icons.business)),
                          ]))),
                       Container(

                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                            Expanded(
                                child: Text(
                              'New',
                              textAlign: TextAlign.center,
                            )),
                            Expanded(
                                child: Text(
                              'Most Viewed',
                              style: TextStyle(color: Colors.red),
                              textAlign: TextAlign.center,
                            )),
                            Expanded(
                                child: Text(
                              'Most Liked',
                              textAlign: TextAlign.center,
                            )),
                            Expanded(
                                child: Text(
                              'All',
                              textAlign: TextAlign.center,
                            )),
                          ])),
                      Expanded(
                          child: Container(
                              child: Row(mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                                  children: [
                        Container(width: 150, height: 150, color: Colors.blueGrey, child: Stack(children: [Image.network('https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTU3ODc4NjAzNTM2MTQ4MTkx/hith-eiffel-tower-istock_000016468972large-2.jpg'), Container(alignment: Alignment.bottomCenter, child: Text('Paris', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 30), textAlign: TextAlign.center,))])),
                        Container(width: 150, height: 150, color: Colors.blueGrey, child: Stack(children: [Image.network('https://discovery.sndimg.com/content/dam/images/discovery/editorial/Curiosity/2020/3/Great_Pyramid_Giza_Getty_Images.png.rend.hgtvcom.616.347.suffix/1583286535679.png'), Container(alignment: Alignment.bottomCenter, child: Text('Egypt', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 30), textAlign: TextAlign.center,))])),
                      ])))
                    ]))));
  }
}
