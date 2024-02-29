import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  var myIcon;

  MyCustomButton(this.myIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Icon(myIcon, size: 32,color: Colors.grey.shade800),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0,-4.0),
            blurRadius: 5,
            spreadRadius: 1
          ),
          BoxShadow(
            color: Colors.grey.shade800,
            offset: Offset(4.0,4.0),
            blurRadius: 5,
            spreadRadius: 1
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade300,
            Colors.grey.shade400,
            Colors.grey.shade500,
          ]
        )
      ),
    );
  }
}
