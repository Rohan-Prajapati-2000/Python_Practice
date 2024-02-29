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
        title: Text("Expanded Widget"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 200,
              width: 50,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 200,
              width: 50,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              width: 50,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              width: 50,
              color: Colors.yellowAccent,
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
