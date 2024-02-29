import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondActivity extends StatelessWidget {
  var name;
  SecondActivity(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Data"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome: $name",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
