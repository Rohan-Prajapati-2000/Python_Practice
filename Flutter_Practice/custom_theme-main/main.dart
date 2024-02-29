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
        textTheme: TextTheme(
          subtitle1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange),
          headline6: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.red)
        ),
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
        title: Text("Custom Theme"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Text One", style: Theme.of(context).textTheme.subtitle1),
            Text("Text Two", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)),
            Text("Text Three", style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.blue)),
            Text("Text Four", style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.yellow)),
            Text("Text Five", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange)),
            Text("Text Six", style: Theme.of(context).textTheme.headline6)
          ]
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
