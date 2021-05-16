import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WelcomePage(),
  ));
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: () => Future.value(false),
        child: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1506102383123-c8ef1e872756?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHw%3D&w=1000&q=80'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: Text("Enjoy the sunset!",
                              style: TextStyle(color: Colors.white, fontSize: 30)))),
                  Expanded(
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context){
                                      return LoginPage();
                                    }
                                ));

                          },
                      child: Container(
                          alignment: Alignment.center,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(50),),
                          child: Text("Sign in",
                              style: TextStyle(color: Colors.white))))),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                            MaterialPageRoute(
                                builder: (context){
                            return SignUpPage();
                        }
                        ));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(50),),
                          child: Text(
                            "Create a new account",
                            style: TextStyle(color: Colors.white),
                          ))))
                ]))));
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Text("Welcome Back!",
                          style: TextStyle(color: Colors.black, fontSize: 30))),

                  Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children:[
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Username",
                                style: TextStyle(color: Colors.black))),
                        Container(
                            alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "password",
                              style: TextStyle(color: Colors.black),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(color: Colors.blue),
                            ))
                      ])
                  ),

                  Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children:[
                          GestureDetector(
                          onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context){
                  return HomePage();
                  }
                  ));
                  },child: Container(alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Login",
                                style: TextStyle(color: Colors.black)))),
                        Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "Signup",
                              style: TextStyle(color: Colors.black),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "Back",
                              style: TextStyle(color: Colors.black),
                            ))
                      ])
                  ),

                ]))));
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Text("Create a new Account",
                          style: TextStyle(color: Colors.black, fontSize: 30))),

                  Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children:[
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Username",
                                style: TextStyle(color: Colors.black))),
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Email",
                                style: TextStyle(color: Colors.black))),
                        Container(
                            alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "password",
                              style: TextStyle(color: Colors.black),
                            )),
                        Container(alignment: Alignment.center,
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Full Name",
                                style: TextStyle(color: Colors.black))),
                      ])
                  ),

                  Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children:[
                          GestureDetector(
                          onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context){
                  return HomePage();
                  }
                  ));
                  },child: Container(alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text("Signup",
                                style: TextStyle(color: Colors.black)))),
                        Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all()),
                            child: Text(
                              "Back",
                              style: TextStyle(color: Colors.black),
                            ))
                      ])
                  ),

                ]))));
  }
}

  class Message {
    var message = "";
  void sendMessage(){
    message = "Sent";
  }
  }


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Message message = Message();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: Drawer(
                child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text('App'),subtitle: Text('Menu'),),
          GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return HomePage();
                        }
                    ));
              }, child: ListTile(leading: Icon(Icons.email),
                        title: Text('Group Chat'),),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context){
                                    return AccountPage();
                                  }
                              ));
                        }, child: ListTile(leading: Icon(Icons.picture_in_picture),
                        title: Text('My Accounts'),),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context){
                                    return WelcomePage();
                                  }
                              ));
                        }, child: ListTile(leading: Icon(Icons.logout),
                        title: Text('Log Out'),),),
                    ]
                )
            ),
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
            child: GestureDetector(
              onTap: (){
                message.sendMessage();
                setState((){});
              },child: Text('Type your message here                                      ${message.message}'),
              )),],
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


class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

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
              onPressed: () {

              },
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