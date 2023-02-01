import 'package:designs/AuthScreens/signupscreen.dart';
import 'package:designs/services/authservices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  User? user;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  checkFields() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Container(
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            key: _formKey,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                      hintText: 'Email',
                      border: InputBorder.none),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                      hintText: 'Password',
                      border: InputBorder.none),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 35, 25, 10),
                child: ElevatedButton(
                  onPressed: () {
                    AuthService()
                        .signIn(emailController.text, passwordController.text);
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                child: ElevatedButton(
                    onPressed: () {
                      AuthService.signInWithGoogleMobile(context: context);
                      print(user!.displayName);
                    },
                    child: Text('Google SignIn')),
              ),
              loginBottomTextWidget(context)
            ],
          )),
        ),
      ),
    );
  }
}

//Widgets
AppBar appBar() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        "assets/images/logo.png",
        height: 50,
        width: 50,
      ),
    ),
    title: Text("Login"),
    backgroundColor: Colors.black,
  );
}

Widget inputText(String text) {
  return Text(text, style: TextStyle(color: Colors.grey, fontSize: 18));
}

Widget loginBottomTextWidget(BuildContext context) {
  return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 35),
      child: RichText(
        text: TextSpan(
            text: "Don\'t have an account? ",
            style: const TextStyle(color: Colors.grey, fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen(),
                        ));
                  },
                text: 'Sign Up',
                style: const TextStyle(color: Colors.blue, fontSize: 18),
              )
            ]),
      ));
}
