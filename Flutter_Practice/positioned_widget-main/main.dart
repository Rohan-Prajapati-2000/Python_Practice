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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.grey,
        title: Text("Positioned"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [

            Positioned(
              top: 80,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.amazon, size: 150, color: Colors.blue,),
                  ],
                )),

            // Positioned(
            //   top: 80,
            //   left: 0,
            //   right: 0,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Icon(Icons.shopping_cart_checkout_rounded, size: 200, color: Colors.blue,),
            //     ],
            //   ),
            // ),



            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/images/nike.png", color: Colors.white),],
              ),
            ),
            
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Jump like your dreem", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 20),
                  Text("Shop Now", style: TextStyle(fontSize: 25, color: Colors.blue),),
                ],
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
