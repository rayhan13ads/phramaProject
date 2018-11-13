import 'package:flutter/material.dart';
import 'dart:async';
import'package:flutter_spinkit/flutter_spinkit.dart';
class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState(){
    super.initState();
    Timer(Duration(seconds: 10), (){
      Navigator.pushReplacementNamed( context,'/home');
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.landscape,
                          color: Colors.deepOrangeAccent,
                          size: 50.30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text("Splash Screen",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SpinKitChasingDots(
                      size: 50.0 ,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(top: 30.0)),
                    Text("Power by Civilized Technologies",
                      style: TextStyle(
                        color: Colors.white,
                      ) ,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}