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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
  var firstNumber = TextEditingController();
  var secondNumber = TextEditingController();

  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Statefull and Stateless Widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(controller: firstNumber,keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              )),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(controller: secondNumber, keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),

                ),),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                      int num1 = int.parse(firstNumber.text.toString());
                      int num2 = int.parse(secondNumber.text.toString());
                      int sum = num1+num2;
                      result = "The sum of $num1 and $num2 is: $sum";
                      setState(() {

                      });

                  },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white))), SizedBox(width: 10),
                  ElevatedButton(onPressed: () {
                    int num1 = int.parse(firstNumber.text.toString());
                    int num2 = int.parse(secondNumber.text.toString());
                    int sub = num1-num2;
                    result = "The Difference between $num1 and $num2 Is: $sub";

                    setState(() {

                    });

                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white))), SizedBox(width: 10, ),
                  ElevatedButton(onPressed: () {
                    int num1=int.parse(firstNumber.text.toString());
                    int num2=int.parse(secondNumber.text.toString());
                    int multi = num1*num2;
                    result = "The Multiplication of $num1 and $num2 Is: $multi";

                    setState(() {

                    });

                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: Text("*", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white))), SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                    int num1 = int.parse(firstNumber.text.toString());
                    int num2 = int.parse(secondNumber.text.toString());
                    var divide = num1/num2;
                    result = "$num1 is divided by $num2 is: "+ divide.toStringAsFixed(2);

                    setState(() {

                    });

                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                      child: Text("/" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white))), SizedBox(width: 20)
                ],
              ),
            ),
            
            Text(result , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)

            
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

