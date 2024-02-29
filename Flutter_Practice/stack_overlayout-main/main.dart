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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
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
        title: Text("Stack Overlay"),
      ),
      body:
      // Stack(
        // TOP LEFT OR BY DEFAULT
        // children: [
        //   Container(height: 400, width: 400, color: Colors.red,),
        //   Container(height: 300, width: 300, color: Colors.green,),
        //   Container(height: 200, width: 200,color: Colors.blue,),
        //   Container(height: 100, width: 100,color: Colors.orange,),
        // ],

      // LEFT CENTER
      // Stack(
      //   children: [
      //       Container(height: 400, width: 400, color: Colors.red,),
      //       Positioned(top: 50, child: Container(height: 300, width: 300, color: Colors.green,)),
      //       Positioned(top: 100, child: Container(height: 200, width: 200,color: Colors.blue,)),
      //       Positioned(top: 150, child: Container(height: 100, width: 100,color: Colors.orange,)),
      //   ],

      // TOP RIGHT
    // Stack(
    // children: [
    // Container(height: 400, width: 400, color: Colors.red,),
    // Positioned(left: 100, child: Container(height: 300, width: 300, color: Colors.green,)),
    // Positioned(left: 200, child: Container(height: 200, width: 200,color: Colors.blue,)),
    // Positioned(left: 300, child: Container(height: 100, width: 100,color: Colors.orange,)),
    // ],

      // BOTTOM RIGHT
      // Stack(
      //   children: [
      //     Container(height: 400, width: 400, color: Colors.red,),
      //     Positioned(top: 100, left: 100, child: Container(height: 300, width: 300, color: Colors.green,)),
      //     Positioned(top: 200, left: 200, child: Container(height: 200, width: 200,color: Colors.blue,)),
      //     Positioned(top: 300, left: 300, child: Container(height: 100, width: 100,color: Colors.orange,)),
      //   ],

      // Stack(
      // children: [
      //   Container(height: 400, width: 400, color: Colors.red,),
      //   Positioned(top: 10, left: 10, child: Container( height: 400, width: 400, color: Colors.green,)),
      //   Positioned(top: 20,left: 20, child: Container(height: 400, width: 400,color: Colors.blue,)),
      //   Positioned(top: 30,left: 30, child: Container(height: 400, width: 400,color: Colors.orange,)),
      //   Positioned(top: 40,left: 40, child: Container(height: 400, width: 400,color: Colors.cyanAccent,)),
      //   Positioned(top: 50,left: 50, child: Container(height: 400, width: 400,color: Colors.redAccent,)),
      //   Positioned(top: 60,left: 60, child: Container(height: 400, width: 400,color: Colors.yellowAccent,)),
      //   Positioned(top: 70,left: 70, child: Container(height: 400, width: 400,color: Colors.pinkAccent,)),
      //   Positioned(top: 80,left: 80, child: Container(height: 400, width: 400,color: Colors.greenAccent,)),
      //   Positioned(top: 90,left: 90, child: Container(height: 400, width: 400,color: Colors.purple,)),
      //   Positioned(top: 100,left: 100, child: Container(height: 400, width: 400,color: Colors.indigo,)),
      //   Positioned(top: 110, left: 110, child: Container(height: 400, width: 400,color: Colors.orangeAccent,)),
      // ],

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 500,
          width: 500,
          child: Stack(
            children: [
              Container(height: 200, width: 200, color: Colors.red),
              Positioned(
                  left: 15, top: 15,
                  child: Container(height: 200, width: 200, color: Colors.blue)),
              Positioned(
                  left: 15, top: 15,
                  child: Container(height: 200, width: 200, color: Colors.orange)),
              Positioned(
                  left: 30, top: 30,
                  child: Container(height: 200, width: 200, color: Colors.purple)),
              Positioned(
                  left: 45, top: 45,
                  child: Container(height: 200, width: 200, color: Colors.pinkAccent)),
              Positioned(
                  left: 60, top: 60,
                  child: Container(height: 200, width: 200, color: Colors.cyanAccent)),
              Positioned(
                  left: 75, top: 75,
                  child: Container(height: 200, width: 200, color: Colors.indigo)),
              Positioned(
                  left: 90, top: 90,
                  child: Container(height: 200, width: 200, color: Colors.red)),

              Positioned(
                  left: 105, top: 105,
                  child: Container(height: 200, width: 200, color: Colors.blue)),
              Positioned(
                  left: 120, top: 120,
                  child: Container(height: 200, width: 200, color: Colors.orange)),
              Positioned(
                  left: 135, top: 135,
                  child: Container(height: 200, width: 200, color: Colors.purple)),
              Positioned(
                  left: 150, top: 150,
                  child: Container(height: 200, width: 200, color: Colors.pinkAccent)),
              Positioned(
                  left: 175, top: 175,
                  child: Container(height: 200, width: 200, color: Colors.cyanAccent)),
              Positioned(
                  left: 190, top: 190,
                  child: Container(height: 200, width: 200, color: Colors.indigo)),
              Positioned(
                  left: 205, top: 205,
                  child: Container(height: 200, width: 200, color: Colors.red)),

              Positioned(
                  left: 225, top: 225,
                  child: Container(height: 200, width: 200, color: Colors.blue)),
              Positioned(
                  left: 240, top: 240,
                  child: Container(height: 200, width: 200, color: Colors.orange)),
              Positioned(
                  left: 255, top: 255,
                  child: Container(height: 200, width: 200, color: Colors.purple)),
              Positioned(
                  left: 270, top: 270,
                  child: Container(height: 200, width: 200, color: Colors.pinkAccent)),
              Positioned(
                  left: 285, top: 285,
                  child: Container(height: 200, width: 200, color: Colors.cyanAccent)),
              Positioned(
                  left: 300, top: 300,
                  child: Container(height: 200, width: 200, color: Colors.indigo)),
              Positioned(
                  left: 315, top: 315,
                  child: Container(height: 200, width: 200, color: Colors.blue)),
            ],


              ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
