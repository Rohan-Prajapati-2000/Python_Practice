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

        title: Text("InkWell"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("On Tap Pressed");
          },
          onDoubleTap: (){
            print("On Double Tap Pressed");
          },
          onLongPress: (){
            print("On Long Press Pressed");
          },
          child: Container(
            height: 350,
            width: 350,
            color: Colors.amber,
            child: Center(
              child: InkWell(
                onTap: (){
                  print("Single Tap Pressed On Text Click Here");
                },
                onDoubleTap: (){
                  print("Double Tap Pressed On Text Click Here");
                },
                onLongPress: (){
                  print("Long Tap Pressed On Text Click Here");
                },
                child: Text("Click Here", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
