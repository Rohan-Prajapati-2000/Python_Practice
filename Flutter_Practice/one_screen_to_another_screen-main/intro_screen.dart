
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_one_screen_to_another_screen/main.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: Text("Intro Screen"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            )
          ],
        ),
      ),
    );
  }
}
