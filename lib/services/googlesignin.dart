import 'package:designs/services/authservices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GSignin extends StatefulWidget {
  @override
  _GSigninState createState() => _GSigninState();
}

class _GSigninState extends State<GSignin> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleAuthProvider authProvider = GoogleAuthProvider();

  String? name;
  String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AuthService.signInWithGoogleMobile(context: context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 40,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Sign In",
                  style: TextStyle(letterSpacing: 1.0, fontSize: 14))
            ],
          ),
        ),
      ),
    );
  }

  //Google Signin for Web

}
