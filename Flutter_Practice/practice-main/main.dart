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
  var selectedValue = "";

  List arrPost = ["Post1","Post2","Post3","Post4","Post5","Post6","Post7","Post8","Post9","Post10","Post11","Post12","Post13","Post14",
    "Post15","Post16","Post17","Post18","Post19","Post20","Post21","Post22","Post23","Post24","Post25","Post26","Post27","Post28","Post29"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Practice"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "Container",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(12)),
              ),

              SizedBox(height: 40),

              Container(
                height: 300,
                width: 200,
                child: Image.asset("assets/images/img.jpg"),
                decoration: BoxDecoration(
                    color: Colors.green,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(-4.0,-4.0),
                        spreadRadius: 2,
                        blurRadius: 15
                      ),

                      BoxShadow(
                        color: Colors.green,
                        offset: Offset(4.0,4.0),
                        spreadRadius: 2,
                        blurRadius: 15
                      )
                ],
                )
              ),

              SizedBox(height: 40),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            elevation: 10,
                            shadowColor: Colors.grey.shade800),
                        onPressed: (){},
                        child: Text("Elevated Button", style: TextStyle(color: Colors.white))),

                    SizedBox(width: 10),

                    TextButton(
                        style: TextButton.styleFrom(shadowColor: Colors.red, elevation: 15),
                        onPressed: (){},
                        child: Text("Text Button")),

                    SizedBox(width: 10),

                    OutlinedButton(onPressed: (){},
                        child: Text("Outline Button")),

                    SizedBox(width: 10),

                    IconButton(onPressed: (){},
                        icon: Icon(Icons.delete, color: Colors.black,)),

                    SizedBox(width: 10),

                    FloatingActionButton(
                        onPressed: (){},
                        child: Icon(Icons.add),
                        backgroundColor: Colors.yellow),

                    SizedBox(width: 10),

                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                            value: "Option 1",
                            child: Text("Option 1")),

                        DropdownMenuItem(
                            value: "Option 2",
                            child: Text("Option 2")),

                        DropdownMenuItem(
                            value: "Option 3",
                            child: Text("Option 3"))

                      ], onChanged: (value){
                      setState(() {
                        selectedValue = value.toString();
                      });
                      print("You Select: $value");
                    },
                      hint: Text("Select an Option"),)
                  ],
                ),
              ),

              SizedBox(height: 40),

              Text("You Selected: $selectedValue", style: TextStyle(fontSize: 20, color: Colors.green),),

              SizedBox(height: 40),

              Image.asset("assets/images/ram.jpg"),

              SizedBox(height: 40),

              InkWell(
                onTap: (){print("Container Clicked");},
                child: Container(
                  height: 400,
                  width: 400,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(child: Icon(Icons.account_box_rounded, size: 200, color: Colors.green), onTap: (){print("Icon Clicked");}),
                      InkWell(child: Text("Contact", style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),onTap: (){print("Contact Text Clicked");}, ),
                      InkWell(child: Text("Name", style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)), onTap: (){print("Name Text Clicked");},),
                      InkWell(child: Text("State", style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)), onTap: (){print("State Text Clicked");},)
                    ],
                  )
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                              Container(
                                color: Colors.red,
                                child: Center(child: Text("Hello 1")),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            height: 300,
                            color: Colors.deepPurple,
                            child: ListView.builder(
                              itemCount: arrPost.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 50,
                                  color: Colors.yellow[200],
                                  alignment: Alignment.center,
                                  child: Text(arrPost[index].toString(), style: TextStyle(color: Colors.blue[900]),),
                                );
                              },
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 40),





            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
