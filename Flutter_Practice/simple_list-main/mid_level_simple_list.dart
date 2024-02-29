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

    var arrNames = ["Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi", "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi",
      "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi", "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi",
      "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi", "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi",
      "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi", "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi",
      "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi", "Ram", "Ramanujan", "Karan", "Arjun", "Varun", "Simmpi", "Dimmpi"];

    return Scaffold(
      appBar: AppBar(
        title: Text("List like recycler view"),
      ),
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return Text(arrNames[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
      // },
      //   itemCount: arrNames.length,

      body: ListView.separated(itemBuilder: (context, index) {
        return Text(arrNames[index], style: TextStyle(fontSize: 22),);
      },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(height: 50, thickness: 1);
        },



      ),
        // scrollDirection: Axis.horizontal,  // by this we can print horizontally
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
