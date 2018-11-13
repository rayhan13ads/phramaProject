import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //attribute
  GoogleSignIn auth = new GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           //-------------------------head Icon
           Container(
             alignment: Alignment.topCenter,
             child: Icon(Icons.access_time,
             size: 100.0,
             ),
           ),
          Container(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GoogleBtn(),
              ],

            ),
          ),
           
         ],
       ),
    );
  }
//-----------------------------Google SingIn Button
  Widget GoogleBtn(){
    return RaisedButton(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset("assets/images/google.png",),
          Text("Login with Google",
            style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
        ),
      ),
        ],
      ),
      elevation: 3.0,
      onPressed: (){
        auth.signIn().then((result){
          result.authentication.then((googlekey){
             FirebaseAuth.instance.signInWithGoogle(
               idToken: googlekey.idToken,
               accessToken: googlekey.accessToken
             ).then((signInUser){
               print('singed in as ${signInUser.displayName}');
               Navigator.of(context).pushReplacementNamed('/home');
             }).catchError((e){print(e);});
          }
          ).catchError((e){print(e);});
        }).catchError((e){print(e);});
      },
    );
  }
}