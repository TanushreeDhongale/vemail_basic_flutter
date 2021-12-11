import 'package:flutter/material.dart';

import 'Login.dart';
import 'Signup.dart';

class MyWelcomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffC25EB4),
                    Color(0xffF5679E),
                    Color(0xffFF8082),
                    Color(0xffFFA56A),
                    Color(0xffFFCF60)
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage("images/img_1.png")),
                    SizedBox(height: 10),
                    Text(
                      "Welcome to VEmail !!",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text(
                        "Login/Signup",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      color: Colors.white,
                      padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Existing User?",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 200.0),
                            child: ElevatedButton(
                              onPressed: () {
                                navigateToLoginPage(context);
                              },
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                      child: Image.asset("images/img.png",
                                          height: 24, width: 20)),
                                  Text(
                                    " Login",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "New User?",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 160.0),
                            child: ElevatedButton(
                              onPressed: () {
                                navigateToSignUpPage(context);
                              },
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                      child: Image.asset("images/img.png",
                                          height: 24, width: 20)),
                                  Text(
                                    " Create Account",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
  Future navigateToLoginPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyLoginPage()));
  }

  Future navigateToSignUpPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MySignUpPage()));
  }
}