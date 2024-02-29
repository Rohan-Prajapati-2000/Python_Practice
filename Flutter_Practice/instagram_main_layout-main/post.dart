
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPost extends StatelessWidget{

  final String posts;

  const MyPost({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.pink.shade200,
        child: Center(child: Text(posts)),
      ),
    );
  }

}