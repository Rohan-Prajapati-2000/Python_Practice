import 'package:button_custom_layout/widget/custom_button.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
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
        title: Text("Button Custom Layout"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Roundable_Button(
                  callback: (){
                    print("Playing.....");
                  },
                    btnName: "Play", icon: Icon(Icons.play_arrow, color: Colors.white), textColor: Colors.white, bgColor: Colors.green,),
              ),

              SizedBox(height: 20),

              Container(
                width: 150,
                child: Roundable_Button(
                  callback: (){
                    print("Starting...");
                  },
                  btnName: "Start", textColor: Colors.white, bgColor: Colors.blue,),
              ),

              SizedBox(height: 20),

              Container(
                width: 200,
                child: Roundable_Button(
                  callback: (){
                    print("Checking....");
                  },
                  btnName: "Check Status", icon: Icon(Icons.play_arrow, color: Colors.red), textColor: Colors.deepOrange, bgColor: Colors.yellow,),
              ),
            ],
          )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//
// Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// width: 150,
// child: MyCustomButton(btnName: "Login",btnIcon: Icon(Icons.lock), callback: (){
// print("Button Pressed");
// },),
// ),
//
// Container(
// width: 200,
// child: MyCustomButton(btnName: "Pause/Play Button",btnIcon: Icon(Icons.play_arrow), bgColor: Colors.orange, fontColor: Colors.red, callback: (){
// print("Button Pressed");
// },),
// ),
// ],
// ),
// )
