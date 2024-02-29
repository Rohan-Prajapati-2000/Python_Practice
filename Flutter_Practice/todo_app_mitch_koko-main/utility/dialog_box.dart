import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/utility/button_style.dart';

class dialogBox extends StatelessWidget {
  final inputTasks;
  VoidCallback onSave;
  VoidCallback onCancel;


  dialogBox({
    super.key,
    required this.inputTasks,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 200,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              // get the user input
              controller: inputTasks,

              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Task"
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // save button
                  myButton(name: "Save", onPressed: onSave),

                  SizedBox(width: 14),
                  // cancle button
                  myButton(name: "Cancel", onPressed: onCancel)
                ],
              ),
            )
          ],
        ),


      ),
    );
  }
}
