import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtonTapped extends StatelessWidget {
  var myIcon;

  MyButtonTapped(this.myIcon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                myIcon,
                size: 35,
                color: Colors.grey.shade800,
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade800,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 5,
                      spreadRadius: 1),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 5,
                      spreadRadius: 1)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.grey.shade600,
                      Colors.grey.shade500,
                      Colors.grey.shade400,
                      Colors.grey.shade300,
                    ])),
          ),
        ),
      ),
    );
  }
}
