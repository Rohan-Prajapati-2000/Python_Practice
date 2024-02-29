import 'package:data_passing_one_to_other_screen/secondActivity.dart';
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

  var myHomeText = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.blue,
          title: Text("Data passing"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  controller: myHomeText,
                ),
              ),

              SizedBox(height: 30),

              ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: 90
                ),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondActivity(myHomeText.text.toString())));
                },
                  child: Text("Go", style: TextStyle(color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              )

            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
