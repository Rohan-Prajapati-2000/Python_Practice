import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Phone_Auth/phone_login_screen.dart';
import 'package:flutter_firebase/Screen/sighup_screen.dart';
import 'package:flutter_firebase/Screen/home_screen.dart';

class Login_Screen extends StatefulWidget{
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {


  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String errorMessage = "";
  int loginAttempts = 0;
  final int maxLoignAttempts = 3;

  void login() async{
    String email = emailController.text.trim();
    String pass = passwordController.text.trim();

    if (email==""){
      setState(() {
        errorMessage = "Please enter email id";
      });
    }else if(pass==""){
      setState(() {
        errorMessage = "Please enter password";
      });
    }else{
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass);
        if(userCredential.user != null){

          Navigator.popUntil(context, (route) => route.isFirst); // it means pop all activity until we goes to first activity
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));  // and that activity replace with SuccefullyLogin screen
        }
      }on FirebaseAuthException catch (e){
        setState(() {
          if (e.code == 'invalid-email') {
            errorMessage = "Error: Invalid-email";
          } else if(e.code == 'user-not-found'){
            errorMessage = "User not found";
          }else if (e.code == 'wrong-password'){
            errorMessage = "Wrong password";
          }else{
            errorMessage = "${e.message}";
          }
        });

        //Login Attempts filed
        loginAttempts++;

        // Checking if max login attempt failed
        setState(() {
          if (loginAttempts==1) {
            errorMessage = "Password Incorrect: 2 attempts left";
          }else if(loginAttempts==2){
            errorMessage = "Password Incorrect: 1 attempt left";
          }else{
            errorMessage = "Maximum login attempt reached please try again leter.";
          }
        });
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

              SizedBox(height: 40),
              
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter Your Email Id",
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.blue[900],),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password, color: Colors.blue[900],),
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
              ),

              SizedBox(height: 20),

              Text(errorMessage, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),

              SizedBox(height: 20),

              SizedBox(
                width: 130,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      )),
                  onPressed: (){
                    login();
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),

              SizedBox(height: 15),

              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Text("Create an Account", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),)),

              SizedBox(height: 15),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneLoginScreen()));
                },
                  child: Text("Login with Phone", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15))),

            ],
          ),
        )

    );
  }
}