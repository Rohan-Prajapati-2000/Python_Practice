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
  RangeValues myValues = RangeValues(0, 200);
  RangeValues secondValue = RangeValues(0, 200);

  @override
  Widget build(BuildContext context) {
    RangeLabels myLabels =
        RangeLabels(myValues.start.toString(), myValues.end.toString());
    RangeLabels mySecondLabels = RangeLabels(secondValue.start.toString(), secondValue.end.toString());

    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.blue,
        title: Text("Range Silder"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSlider(
              values: myValues,
              labels: myLabels,
              divisions: null,
              activeColor: Colors.red,
              inactiveColor: Colors.red[200],
              onChanged: (newValue) {
                myValues = RangeValues(
                    newValue.start.roundToDouble(),
                    newValue.end
                        .roundToDouble()); // by this we get value in integer
                // myValues = newValue;   // by this we get value in accurate (like in int and double)
                print("${newValue.start}, ${newValue.end}");
                setState(() {});
              },
            ),
            //
            SizedBox(height: 80),

            RangeSlider(
                values: secondValue,
                labels: mySecondLabels,
                divisions: 20,
                activeColor: Colors.blue,
                inactiveColor: Colors.black,
                onChanged: (value2) {
                  setState(() {
                    secondValue = RangeValues(value2.start.roundToDouble(), value2.end.roundToDouble());
                  });
                })
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


