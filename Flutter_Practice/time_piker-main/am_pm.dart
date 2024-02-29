import 'package:flutter/cupertino.dart';

class AmPm extends StatelessWidget {
  final bool isItsAm;

  AmPm({required this.isItsAm});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        isItsAm == true ? 'am' : 'pm',
        style: TextStyle(fontSize: 40, color: CupertinoColors.white),
      )),
    );
  }
}
