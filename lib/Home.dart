import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
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
                      Color(0xffC25EB4),
                      Color(0xffF5679E),
                      Color(0xffFF8082),
                      Color(0xffFFA56A),
                      Color(0xffFFCF60)
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
}
