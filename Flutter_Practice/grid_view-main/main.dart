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
    var arrColors = [
      Colors.amber,
      Colors.deepOrange,
      Colors.blueAccent,
      Colors.teal,
      Colors.tealAccent,
      Colors.indigoAccent,
      Colors.cyanAccent,
      Colors.purple,
      Colors.greenAccent,
      Colors.deepPurpleAccent,
      Colors.grey,
      Colors.pinkAccent,
      Colors.brown,
      Colors.red,
      Colors.deepOrangeAccent,
      Colors.amber,
      Colors.deepOrange,
      Colors.blueAccent,
      Colors.teal,
      Colors.tealAccent,
      Colors.indigoAccent,
      Colors.cyanAccent,
      Colors.purple,
      Colors.greenAccent,
      Colors.deepPurpleAccent,
      Colors.grey,
      Colors.pinkAccent,
      Colors.brown,
      Colors.red,
      Colors.deepOrangeAccent,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Grid View"),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: arrColors[index],
          );
        },
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 70,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5
        ),
        itemCount: arrColors.length
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// body: GridView.extent(maxCrossAxisExtent: 100,
// mainAxisSpacing: 5,
// crossAxisSpacing: 5,
// children: [
// Container(color: Colors.amber),
// Container(color: Colors.blue),
// Container(color: Colors.red),
// Container(color: Colors.green),
// Container(color: Colors.pink),
// Container(color: Colors.brown),
// Container(color: Colors.pinkAccent),
// Container(color: Colors.cyan),
// Container(color: Colors.grey),
// Container(color: Colors.deepPurpleAccent),
// Container(color: Colors.greenAccent),
// Container(color: Colors.purple),
// Container(color: Colors.cyanAccent),
// Container(color: Colors.indigo),
// Container(color: Colors.indigoAccent),
// Container(color: Colors.tealAccent),
// Container(color: Colors.teal),
// Container(color: Colors.blueAccent),
// Container(color: Colors.deepOrange),
// Container(color: Colors.amber),
// Container(color: Colors.blue),
// Container(color: Colors.red),
// Container(color: Colors.green),
// Container(color: Colors.pink),
// Container(color: Colors.brown),
// Container(color: Colors.pinkAccent),
// Container(color: Colors.cyan),
// Container(color: Colors.grey),
//
// ],
// )

// body: GridView.count(crossAxisCount: 5,
// children: [
// Container(color: Colors.amber),
// Container(color: Colors.blue),
// Container(color: Colors.red),
// Container(color: Colors.green),
// Container(color: Colors.pink),
// Container(color: Colors.brown),
// Container(color: Colors.pinkAccent),
// Container(color: Colors.cyan),
// Container(color: Colors.grey),
// Container(color: Colors.deepPurpleAccent),
// Container(color: Colors.greenAccent),
// Container(color: Colors.purple),
// Container(color: Colors.cyanAccent),
// Container(color: Colors.indigo),
// Container(color: Colors.indigoAccent),
// Container(color: Colors.tealAccent),
// Container(color: Colors.teal),
// Container(color: Colors.blueAccent),
// Container(color: Colors.deepOrange),
// ],
// )
