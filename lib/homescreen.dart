import 'package:designs/Screens/MainScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Main(),
                          ));
                    } else {
                      print('Wrong');
                    }
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                child: ElevatedButton(
                    onPressed: () {}, child: Text('Sign in with Google')),
              )
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
    title: Text("Login"),
    backgroundColor: Colors.black,
  );
}

Widget inputText(String text) {
  return Text(text, style: TextStyle(color: Colors.grey, fontSize: 18));
}
