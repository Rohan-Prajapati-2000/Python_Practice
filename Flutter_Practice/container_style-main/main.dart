import 'package:flutter/material.dart';

void main() {
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Container Style"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.brown,
              // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10),   // this is for border radius
              //     topLeft: Radius.circular(10), topRight: Radius.circular(10))     // this is for border radius
              
              // borderRadius: BorderRadius.all(Radius.circular(20)),    // this is for border radius
              border: Border.all(
                width: 4,   //width of border
                color: Colors.black   // color of radius
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,  // Shaddo Color
                  blurRadius: 80,   // blur opacity
                  spreadRadius: 20    // in how many radius this shadow will spread

                )
              ],
              shape: BoxShape.circle    // by this line we can take circular shape
              // if we want to this circular shape then we have remove above (borderRadius: BorderRadius.all(Radius.circular(20)),) line

            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
