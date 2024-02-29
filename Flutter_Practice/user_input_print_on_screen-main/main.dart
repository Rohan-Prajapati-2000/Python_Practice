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
  String result = "";
  var phoneNumber = TextEditingController();
  var emailId = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Input Fields"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter your phone number...",
                    prefixIcon: Icon(Icons.phone),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.pinkAccent, width: 2),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Container(height: 12),
                TextField(
                  controller: emailId,
                  decoration: InputDecoration(
                    hintText: "Enter your mail id...",
                    prefixIcon: Icon(Icons.mail, color: Colors.green),
                    hoverColor: Colors.green,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 3, color: Colors.green)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Container(height: 12),
                TextField(
                  controller: password,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Enter your password...",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye, color: Colors.blue),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                Container(height: 12),
                TextField(
                  decoration: InputDecoration(
                      suffixText: "Username exist",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.currency_exchange),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                ),
                Container(height: 12),
                TextField(
                  decoration: InputDecoration(
                      prefixText: "+91",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),

                Container(height: 12),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        String userEmail = emailId.text;
                        String userContact = phoneNumber.text;
                        String userPass = password.text;
                        result ="Your Mail is: $userEmail \nYour Phone Number is: $userContact \nYour Password is: $userPass";
                      }
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[200],
                      elevation: 15,
                      onPrimary: Colors.white,
                      textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: Text("Get Value")),
                Text(result, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
