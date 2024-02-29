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
  bool isCheck = false;
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Just Practice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text("Terms & Condition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              subtitle: Text("Have you read all terms and condition carefully", style: TextStyle(color: Colors.grey),),
              autofocus: true,

              hoverColor: Colors.green,
              value: isCheck,
              onChanged: (val) {
                setState(() {
                  isCheck = val!;
                  if (isCheck == true) {
                    result = "Agree";
                  } else {
                    result = "";
                  }
                });
              },
              activeColor: Colors.black,
            ),
            Text(
              "$result",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
