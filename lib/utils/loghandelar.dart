import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/splash.dart';
import '../pages/home.dart';
import '../pages/login.dart';
Widget handleCurrentScreen(){
  return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder:(BuildContext context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return SplashScreen();
        }else{
          if(snapshot.hasData){
            return Home();
          }
          return Login();
        }
      } );
}