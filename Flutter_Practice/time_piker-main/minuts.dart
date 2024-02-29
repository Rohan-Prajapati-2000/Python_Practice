
import 'package:flutter/cupertino.dart';

class MyMinutes extends StatelessWidget{
  int min;

  MyMinutes({required this.min});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(
        min<10 ? "0"+min.toString() : min.toString(),
        style: TextStyle(
        fontSize: 40,
        color: CupertinoColors.white
      ),)),
    );
  }

}