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
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.grey[300]: Colors.grey[850],

      appBar: AppBar(
          backgroundColor: isDark ? Colors.grey[300]: Colors.grey[850],
          title: Text("Theme", style: TextStyle(color: isDark ? Colors.grey[850]: Colors.grey[300]),)
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Icon(Icons.watch_later, size: 150, color: isDark ? Colors.grey[850]: Colors.grey[300]),
                decoration: BoxDecoration(
                  color: isDark ? Colors.grey[300]: Colors.grey[850],
                borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: isDark ? Colors.grey.shade300: Colors.grey.shade800,
                      offset: Offset(-4.0,-4.0),
                      blurRadius: 20.0,
                      spreadRadius: 1
                    ),

                    BoxShadow(
                      color: isDark ? Colors.grey.shade800: Colors.grey.shade300,
                      offset: Offset(-4.0,-4.0),
                      blurRadius: 5.0,
                      spreadRadius: 1
                    )
                  ]
            ),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    isDark = true;
                  });
                },
                    child: Text("Light", style: TextStyle(color: Colors.black),)),

                SizedBox(width: 15),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade900),
                    onPressed: (){
                      setState(() {
                        isDark = false;
                      });
                    },
                    child: Text("Dark", style: TextStyle(color: Colors.white),))
              ],
            )


          ],
        ),

      ),





    );
  }
}
