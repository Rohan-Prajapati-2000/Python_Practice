import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: Text("Icon and font_awesome_icon"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flutter_dash, size: 100, color: Colors.blue,),
          
              FaIcon(FontAwesomeIcons.gamepad, size: 100,),
              
              FaIcon(FontAwesomeIcons.facebook, color: Colors.blue, size: 100),
              
              FaIcon(FontAwesomeIcons.android, size: 100, color: Colors.green ),

              FaIcon(FontAwesomeIcons.appStoreIos, size: 100, color: Colors.blue)
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
