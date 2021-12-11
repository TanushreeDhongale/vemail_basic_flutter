import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

class MySignUpPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF787676),
                      Color(0xff537B80),
                      Color(0xff50C2D1)
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("images/img_1.png"),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Welcome Back !!",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black),
                                ),
                                Text(
                                  "Login Back to your account",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                      Container(
                        width: 400,
                        decoration: new BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "SIGNUP",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white38,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      prefixIcon: Icon(Icons.account_box_rounded),
                                      hintText: "Enter Your Name"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white38,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      prefixIcon: Icon(Icons.email_rounded),
                                      hintText: "Enter Your Email"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white38,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      prefixIcon: Icon(Icons.lock_sharp),
                                      suffixIcon: Icon(Icons.remove_red_eye_sharp),
                                      hintText: "Create Password"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white38,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none
                                          ),
                                      prefixIcon: Icon(Icons.lock_sharp),
                                      suffixIcon: Icon(Icons.remove_red_eye_sharp),
                                      hintText: "Confirm Password"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                child: ElevatedButton(
                                  onPressed: () {
                                    navigateToHomePage(context);
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                          child: Image.asset("images/img.png",
                                              height: 24, width: 20)),
                                      Text(
                                        " SIGNUP",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Already have an account?",
                                        style: TextStyle(color: Color(0xFF0041A1),fontWeight: FontWeight.bold),
                                      ),
                                      TextButton(
                                        onPressed: () {navigateToLoginPage(context);},
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              color: Color(0xFF0041A1),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future navigateToLoginPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyLoginPage()));
  }

  Future navigateToHomePage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}
