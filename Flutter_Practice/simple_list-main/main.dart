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
        title: Text("List View"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        // reverse: true,  // this is used for show list right to left
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("One", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Two", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Three", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Four", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Five", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Six", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Seven", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Eight", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Nine", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Ten", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Eleven", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twelve", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Thirteen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Fourteen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Fifteen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Sixteen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Seventeen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Eighteen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Nineteen", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty One", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Two", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Three", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Four", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Five", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Six", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Seven", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Eight", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twenty Nine", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Thirty ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          )

        ],
      ),
    );
  }
}
