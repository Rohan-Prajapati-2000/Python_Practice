
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.double_arrow_outlined,
                color: Colors.white,
                size: 100,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
