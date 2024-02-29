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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
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
  String value = "";

  callBackValue() {
    String callBackFunctionValue = "This Is Call Back Function Value";
    print("This Is Call Back Function Value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("CallBack Function"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(callBackValue()),

            Container(height: 25),

            Text(
              value,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),

            Container(height: 25),

            ElevatedButton(
              child: Text("Click Me"),
              onPressed: () {
                setState(() {
                  value = "In Toast And Text ==> Button Clicked";
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.orange[200],
                  elevation: 15,
                  content: Text(value),
                  duration: Duration(seconds: 2),
                ));
              },
            ),

            Container(height: 25),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Button 1 & Buton 2 is using single CallBackFunction\n"
                    "Just like this we can use single callBackFunction many time",
                style: TextStyle(color: Colors.red, fontSize: 15,fontWeight: FontWeight.bold),
              ),
            ),

            ElevatedButton(
              onPressed: callBackValue,
              child: Text("Button 1"),
            ),
            Text("Value will print in terminal after clicking this button 1"),

            Container(height: 25),

            ElevatedButton(onPressed: callBackValue, child: Text("Button 2")),
            Text("Value will print in terminal after clicking this button 2"),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
