import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';


void main() {
  runApp(
      MaterialApp(
          home: Scaffold(
            body: Container(
              color: Color.fromARGB(255, 66, 165, 245),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(


              color: Colors.red[600],
              width: 300.0,
              height: 200.0,

              child: Text("Hello World!",
                  style: TextStyle(height: 5, fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,

            ),
          ),
          ),
  )));
}