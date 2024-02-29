
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget{
  String stories;


  Stories(this.stories);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 150,
        width: 150,
        child: Center(child: Text(stories)),
        decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle
        ),
      ),
    );

  }

}