import'package:flutter/material.dart';
import './pages/splash.dart';
import './pages/home.dart';
import './utils/loghandelar.dart';
//----------------------------End Libery
void main()=> runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PharmaQuick",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.greenAccent,
        accentColor: Colors.amber,
      ),
      home: handleCurrentScreen(),
      routes: {
        '/home': (context) => Home(), 
      },
    );
  }
}