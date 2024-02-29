import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String name;
  VoidCallback onPressed;

  myButton({
    super.key,
    required this.name,
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
        child: Text(name),
      ),
      color: Colors.yellow
    );
  }
}