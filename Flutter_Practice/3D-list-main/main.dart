import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrValue = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
  21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.blue,
          title: Text("3D LIST"),
        ),
        body: Center(
          child: ListWheelScrollView(
            itemExtent: 200,
            children: arrValue.map((listValue) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text("$listValue", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
            )).toList(),
          ),
        ),
    );
  }
}
