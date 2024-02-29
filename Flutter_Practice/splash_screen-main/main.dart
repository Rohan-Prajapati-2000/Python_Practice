import 'package:flutter/material.dart';
import 'package:splash_screen/splash_screen.dart';

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
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
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
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.orange[400],
        title: Text("Splash Screen"),
      ),
      body: Center(child: Text("Hello World",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Colors.grey
      ),)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
