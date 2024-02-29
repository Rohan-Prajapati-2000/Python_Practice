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
  var valueOfFeet = TextEditingController();
  var valueOfInch = TextEditingController();
  var valueOfWeight = TextEditingController();
  var result = "";

  var bgColor= Colors.blue.shade200;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.blue,
          title: Text("BMI APP"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: valueOfFeet,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                        hintText: "Enter Your Height",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 3,
                            )),
                        suffixText: "In Feet",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: valueOfInch,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                        hintText: "Enter Your Height",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 3,
                            )),
                        suffixText: "In Inch",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: valueOfWeight,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                        hintText: "Enter Your Weight",
                        suffixText: "Kg",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.blue, width: 3)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                SizedBox(height: 25),


                ElevatedButton(

                  onPressed: () {

                      var feet = valueOfFeet.text.toString();
                      var inch = valueOfInch.text.toString();
                      var weight = valueOfWeight.text.toString();

                      if (feet!="" && inch!="" && weight!="") {
                        int intFeet = int.parse(feet);
                        int intInch = int.parse(inch);
                        int intWeight = int.parse(weight);

                        var totalInch = (intFeet*12)+intInch;

                        var heightMeter= totalInch*0.0254;

                        var BMI = intWeight/(heightMeter*heightMeter);

                        setState(() {

                        if(BMI>25){
                          result="You Are Over Weight\nAnd Your BMI Is: ${BMI.toStringAsFixed(2)}";
                          bgColor=Colors.orange;
                        }else if (BMI<18){
                          result = "You Are Under Weight\nAnd Your BMI Is: ${BMI.toStringAsFixed(2)}";
                          bgColor=Colors.red;
                        }else{
                          result = "You Are Healthy\nAnd Your BMI Is: ${BMI.toStringAsFixed(2)}";
                          bgColor=Colors.green;
                        }
                        });

                      }else{
                        setState(() {
                          result="Please Enter All Fields";
                        });
                      }
                  },
                  child: Text("Calculate",
                    style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue),
                ),
                SizedBox(height: 25),


                Text(result,style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ));
  }
}
