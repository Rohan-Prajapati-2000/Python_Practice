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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
        title: Text("Rich Text"),
      ),
      body:

      // Row(
      //   children: [
      //     Baseline(
      //         baseline: 30,
      //         baselineType: TextBaseline.ideographic,
      //         child: Text("Hello!!", style: TextStyle(fontSize: 20),)),
      //     Text(" WSCube", style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold)),
      //   ],
      // ),


      RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.blue),
          children: <TextSpan>[
            TextSpan(text: "Welcome"),
            TextSpan(text: " To", style: TextStyle(fontSize: 25, color: Colors.blue)),
            TextSpan(text: " My"),
            TextSpan(text: " Home", style: TextStyle(fontSize: 35, color: Colors.red, fontWeight: FontWeight.bold)),
            TextSpan(text: " \nThere are a boy, who was born in"),
            TextSpan(text: " 1967.", style: TextStyle(fontSize: 35, color: Colors.red, fontWeight: FontWeight.bold)),
            TextSpan(text: " When he born after few days his parents get die in an accident."),
            TextSpan(text: " He was grew up very fast by his"),
            TextSpan(text: " GrandMom", style: TextStyle(fontSize: 35, color: Colors.red, fontWeight: FontWeight.bold)),

          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
