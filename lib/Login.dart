import 'package:flutter/material.dart';

import 'Home.dart';
import 'Signup.dart';

class MyLoginPage extends StatelessWidget {
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
                                  "Login back to your account",
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
                                "LOGIN",
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
                                      prefixIcon:
                                          Icon(Icons.account_box_rounded),
                                      hintText: "Username/Email Id"),
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
                                      hintText: "Password"),
                                ),
                              ),
                              Container(
                                child: TextButton(
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(color: Color(0xFF0041A1),fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              /*Row(
                                children: [
                                  Checkbox(value: this.showvalue, onChanged: (bool value) {
                                    setState(() {
                                      this.showvalue = value;
                                    });
                                  },
                                  checkColor: Colors.indigo,
                                  fillColor: MaterialStateProperty.all(Colors.white),),
                                  Text(
                                    "Remember Me",
                                    style: TextStyle(
                                      color: Colors.indigo
                                    ),
                                  ),
                                ],
                              ),*/
                              /*Center(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 200.0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print("Logged in Successfully!!");
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            ClipRRect(
                                                child: Image.asset(
                                                    "images/img.png",
                                                    height: 24,
                                                    width: 20)),
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
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),*/
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                child: ElevatedButton(
                                  onPressed: () {
                                    navigateToHomePage(context);
                                  },
                                  child: Text(
                                    " LOGIN",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
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
                                        "Don't have an account?",
                                        style: TextStyle(
                                          color: Color(0xFF0041A1),
                                        fontWeight: FontWeight.bold),
                                      ),
                                      TextButton(
                                          onPressed: () {navigateToSignUpPage(context);},
                                          child: Text(
                                            "Signup",
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
  Future navigateToSignUpPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MySignUpPage()));
  }

  Future navigateToHomePage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}
