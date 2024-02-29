import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      //   useMaterial3: true,
      // ),
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
      backgroundColor: Colors.grey.shade300,
      // appBar: AppBar(
      //   // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   backgroundColor: Colors.grey,
      //   title: Text("Login"),
      // ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.android,
                  size: 100,
                ),
                SizedBox(height: 60),
                Text("HELLO  AGAIN!",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.grey.shade800)),
                SizedBox(height: 5),
                Text("Welcome back , you've been missed!",
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600)),
                SizedBox(height: 20),


                TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Email",
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                      ),),
                ),

                SizedBox(height: 8),

                TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.white,
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none
                    )
                  ),
                ),

                SizedBox(height: 8),

                SizedBox(
                  width: double.infinity,
                  height: 65,
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade600,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        elevation: 15
                      ),
                      child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20),)),
                ),

                SizedBox(height: 25),

                RichText(text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Not a member? ",
                      style: TextStyle(color: Colors.grey.shade600)
                    ),
                    TextSpan(
                      text: "Register Now",
                      style: TextStyle(color: Colors.blue)
                    )
                  ]
                ))

              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
