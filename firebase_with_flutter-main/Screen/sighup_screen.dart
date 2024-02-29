import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController conPassController = TextEditingController();

  String errorMessage="";

  //Function for create Account
  void createAccount() async{
    String mail = emailController.text.trim();
    String pass = passController.text.trim();
    String confirmPass = conPassController.text.trim();

    if(mail=="" || pass=="" || confirmPass==""){
      setState(() {
        errorMessage="Please fill all fields";
      });
    }
    else if(pass != confirmPass){
      setState(() {
        errorMessage ="Password does not match";
      });
    }else{
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: mail, password: pass);
        if(userCredential.user != null){
          Navigator.pop(context);   // if user information is not equal to null
          // then it will update data on firebase then signup screen will pop
        }
      }on FirebaseAuthException catch(e){
        if (e.code == 'email-already-in-use'){
          setState(() {
            errorMessage = "This email is already exixt";
          });
        }else if(e.code=='invalid-email'){
          setState(() {
            errorMessage = "Invalid email id.";
          });
        }else{
          setState(() {
            errorMessage = "Error: ${e.message}";
          });
        }
      }catch(e){
        setState(() {
          errorMessage = "Error: $e}";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Create an Account"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email Id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),

              SizedBox(height: 20),

              TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: conPassController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),

              SizedBox(height: 15),

              Text(errorMessage, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),


              SizedBox(height: 15),

              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    onPressed: (){
                    createAccount();
                    },
                    child: Text("Create Account", style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ));
  }
}
