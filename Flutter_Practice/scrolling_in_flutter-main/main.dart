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
        title: Text("Scrolling"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.purple,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.yellowAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.pink,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.pinkAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.cyan,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 200,
                        width: 200,
                        color: Colors.brown,
                      )
                    ],
                  ),
                ),
              ),
          
            Container(
              margin: EdgeInsets.only(bottom: 15),
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.deepPurpleAccent,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.deepOrangeAccent,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.brown,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.yellowAccent,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.lightGreenAccent,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.greenAccent,
              ),
          
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                color: Colors.red,
              )
          
            ],
          ),
        ),
      )
    );
  }
}
