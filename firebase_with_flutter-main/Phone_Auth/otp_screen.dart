import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Screen/home_screen.dart';

class OTPScreen extends StatefulWidget {
  String verificationid;
  OTPScreen({required this.verificationid});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();

  String errorMessage="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("OTP Screen",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: otpController,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.red, width: 3)),
                hintText: "Enter OTP",
                hintStyle: TextStyle(color: Colors.red),
                prefixIcon: Icon(
                  Icons.pattern_sharp,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(height: 20),

          Text(errorMessage, style: TextStyle(color: Colors.red)),

          SizedBox(height: 20),

          SizedBox(
            width: 180,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () async {
                  try {
                    PhoneAuthCredential credential = await PhoneAuthProvider
                        .credential(verificationId: widget.verificationid,
                        smsCode: otpController.text.toString());
                    FirebaseAuth.instance.signInWithCredential(credential).then((value) =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())));

                  } catch (e) {
                    errorMessage = "An error occurred";
                    if(e is FirebaseAuthException){
                      if(e.code=='invalid-verification-code'){
                        errorMessage = "Invalid OTP";
                      }else{
                        errorMessage = "Error: ${e.message}";
                      }
                    }
                    setState(() {
                      errorMessage = errorMessage;
                    });
                  }
                },
                child: Text(
                  "Submit OPT",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
