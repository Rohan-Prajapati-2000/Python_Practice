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
  var arrImages = [
    "assets/images/img.jpg",
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img.jpg",
    "assets/images/img5.jpg",
    "assets/images/img.jpg",
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img.jpg",
    "assets/images/img5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("LIstView.Builder Practice")),
      body:
          // Container(
          //   child: Image.asset(arrImages[0]),
          // ),

          ListView.builder(
        itemCount: arrImages.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                child: ListTile(
                  title: Image.asset(arrImages[index]),
                ),
              ));
        },
      ),
    );
  }
}
