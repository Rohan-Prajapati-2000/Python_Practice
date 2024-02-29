import 'dart:ui_web';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String errorMessage = "";

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login_Screen()));
  }

  void saveUser() {
    String name = nameController.text.toString();
    String email = emailController.text.toString();

    nameController.clear();
    emailController.clear();

    setState(() {
      if (name != "" && email != "") {
        Map<String, dynamic> userData = {"name": name, "email": email};
        FirebaseFirestore.instance.collection("users").add(userData);
      } else {
        errorMessage = "Please fill all fields";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  logout();
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue, width: 3)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue, width: 3)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(height: 20),
              Text(errorMessage,
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      saveUser();
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(height: 15),


              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("users")
                    .snapshots(), // when data will update on
                // firebase server then snapshots() will update immediately
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    // if my app has connected to firebase server
                    if (snapshot.hasData && snapshot.data != null) {
                      // we are chcking that our snapshot must has data and should not null
                      return Container(
                        height: 400,
                        color: Colors.blue,
                        child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,  // data! means data can be null
                          itemBuilder: (context, index) {

                            Map<String, dynamic> userMap = snapshot.data!.docs[index].data() as Map<String, dynamic>;// document ke index ka data

                            return ListTile(
                              title: Text(userMap["name"]),
                              subtitle: Text(userMap["email"]),
                            );
                          },
                        ),
                      );
                    } else {
                      return Text("No Data Found!");
                    }
                  } else {
                    // if my app is not connected to firebase server
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              )
            ],
          ),
        ));
  }
}
