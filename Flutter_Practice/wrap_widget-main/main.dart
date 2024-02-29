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
        title: Text("Wrap Widget"),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 5,
          runSpacing: 10,
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.yellow),
            Container(height: 100, width: 100, color: Colors.orange),
            Container(height: 100, width: 100, color: Colors.indigo),
            Container(height: 100, width: 100, color: Colors.cyanAccent),
            Container(height: 100, width: 100, color: Colors.lightGreen),
            Container(height: 100, width: 100, color: Colors.pink),
            Container(height: 100, width: 100, color: Colors.deepOrangeAccent),
            Container(height: 100, width: 100, color: Colors.lightGreenAccent),
            Container(height: 100, width: 100, color: Colors.lightBlueAccent),
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.yellow),
            Container(height: 100, width: 100, color: Colors.orange),
            Container(height: 100, width: 100, color: Colors.indigo),
            Container(height: 100, width: 100, color: Colors.cyanAccent),
            Container(height: 100, width: 100, color: Colors.lightGreen),
            Container(height: 100, width: 100, color: Colors.pink),
            Container(height: 100, width: 100, color: Colors.deepOrangeAccent),
            Container(height: 100, width: 100, color: Colors.lightGreenAccent),
            Container(height: 100, width: 100, color: Colors.lightBlueAccent),
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.yellow),
            Container(height: 100, width: 100, color: Colors.orange),
            Container(height: 100, width: 100, color: Colors.indigo),
            Container(height: 100, width: 100, color: Colors.cyanAccent),
            Container(height: 100, width: 100, color: Colors.lightGreen),
            Container(height: 100, width: 100, color: Colors.pink),
            Container(height: 100, width: 100, color: Colors.deepOrangeAccent),
            Container(height: 100, width: 100, color: Colors.lightGreenAccent),
            Container(height: 100, width: 100, color: Colors.lightBlueAccent),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

