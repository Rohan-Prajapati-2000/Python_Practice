import 'package:flutter/material.dart';
import 'package:inner_shadow/button.dart';
import 'package:inner_shadow/button_pressed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var icons1 = Icons.home;
  var icons2 = Icons.settings;
  var icons3 = Icons.favorite;
  var icons4 = Icons.message;


  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;

  void _letsPress1() {
    setState(() {
      isPressed1 = true;
      isPressed2 = false;
      isPressed3 = false;
      isPressed4 = false;
    });
  }

  void _letsPress2() {
    setState(() {
      isPressed1 = false;
      isPressed2 = true;
      isPressed3 = false;
      isPressed4 = false;
    });
  }

  void _letsPress3() {
    setState(() {
      isPressed1 = false;
      isPressed2 = false;
      isPressed3 = true;
      isPressed4 = false;
    });
  }

  void _letsPress4() {
    setState(() {
      isPressed1 = false;
      isPressed2 = false;
      isPressed3 = false;
      isPressed4 = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      //
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     title: Text("Inner Shadow")
      // ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Icon(
              Icons.apple,
              size: 100,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15,
                      spreadRadius: 1),
                  BoxShadow(
                      color: Colors.grey.shade600,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15,
                      spreadRadius: 1)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.grey.shade200,
                      Colors.grey.shade300,
                      Colors.grey.shade400,
                      Colors.grey.shade500,
                      Colors.grey.shade600,
                    ])),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: _letsPress1,
                  child: isPressed1 ? MyButtonTapped(icons1) : MyCustomButton(icons1),
                )),

                Expanded(
                    child: GestureDetector(
                      onTap: _letsPress2,
                      child: isPressed2 ? MyButtonTapped(icons2) : MyCustomButton(icons2),
                    )),

                Expanded(
                    child: GestureDetector(
                      onTap: _letsPress3,
                      child: isPressed3 ? MyButtonTapped(icons3) : MyCustomButton(icons3),
                    )),

                Expanded(
                    child: GestureDetector(
                      onTap: _letsPress4,
                      child: isPressed4 ? MyButtonTapped(icons4) : MyCustomButton(icons4),
                    )),
              ],
            ),
          )
        ],
      )),
    );
  }
}
