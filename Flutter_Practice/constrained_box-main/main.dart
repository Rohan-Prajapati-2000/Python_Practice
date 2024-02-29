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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
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
        title: Text("Constraint Box"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 200,
          maxWidth: 300
        ),
        child: Text("Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, "
            "Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, ", overflow: TextOverflow.fade,),

      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
