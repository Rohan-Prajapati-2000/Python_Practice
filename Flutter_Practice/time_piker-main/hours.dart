
import 'package:flutter/cupertino.dart';

class MyHours extends StatelessWidget{
  int hours;

  MyHours({required this.hours});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(hours.toString(), style: TextStyle(
          fontSize: 40,
          color: CupertinoColors.white
      ),)),
    );
  }

}