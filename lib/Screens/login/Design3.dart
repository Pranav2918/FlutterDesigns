import 'package:flutter/material.dart';

class LoginDesign3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover))),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0.6),
          ),
          Align(
            child: Container(
                margin: EdgeInsets.only(top: 85),
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white.withOpacity(0.6),
                ),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Icon(Icons.fastfood_outlined,
                            size: 35, color: Colors.black)),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text('GOOD FOOD',
                          style: TextStyle(
                              color: Colors.red,
                              letterSpacing: 1.0,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                            '''Nutritionally balanced,\neasy to cook.\nQuality fresh local\ningredients''',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center)),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Colors.white),
                      child: Center(
                        child: Text('Create Account',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                          InkWell(
                              //   splashColor: Colors.red,
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  backgroundColor: Colors.white,
                                  content: Text(
                                    'This Is Static Design',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 21, 0.9)),
                                  ),
                                  duration: Duration(milliseconds: 800),
                                ));
                              },
                              child: Text('Sign In',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)))
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
