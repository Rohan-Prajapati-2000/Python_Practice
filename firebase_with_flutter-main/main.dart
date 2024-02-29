import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Phone_Auth/otp_screen.dart';
import 'package:flutter_firebase/Phone_Auth/phone_login_screen.dart';
import 'package:flutter_firebase/Screen/login_screen.dart';
import 'package:flutter_firebase/firebase_options.dart';
import 'Screen/home_screen.dart';



      //Login with Email

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform
//   );
//
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       home: (FirebaseAuth.instance.currentUser != null) ? HomeScreen() : Login_Screen(),
//     );
//   }
// }




            // Login with email and phone number
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );

  // FireBase manual insert, add, get all document's fields, get specific document's field,
  // update and delete

//   QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("users").get();//this is used for that how many documents we have
//   // print(snapshot.docs.toString());
// // printing all collections
//   for (var doc in snapshot.docs){
//     print(doc.data().toString());
//   }

  // print("");

  // for getting specific collection
  // DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance.collection("users").doc("F3T4ztepxMh95LwnS3pz").get();
  // print("This is specific value from whole collections");
  // print(documentSnapshot.data().toString());
  //

  // Entering new user on firestore
  // FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // Map<String, dynamic> newUser ={
  //   "name" : "Naman",
  //   "email" : "naman123@gmail.com"
  // };
  // await _firestore.collection("users").add(newUser);
  // print("New user saved");


  // Entering new user with manual document id
  // Map<String, dynamic> manUserId = {
  //   "name" : "Tarun",
  //   "email" : "khannatarun@gmail.com"
  // };
  // await FirebaseFirestore.instance.collection("users").doc("manual_document_id").set(manUserId);
  // print("new user with custom document_id added");

  //Updating users details
  // await FirebaseFirestore.instance.collection("users").doc("manual_document_id").update({
  //   "email" : "tarunkhannaupdated@gmail.com"
  // });
  // print("User Updated");

  //Deleting Collection's document
  // await FirebaseFirestore.instance.collection("users").doc("lePGeusrUqb72PrK2JxK").delete();
  // print("User deleted");




  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: (FirebaseAuth.instance.currentUser != null) ? HomeScreen() : Login_Screen(),
    );
  }
}