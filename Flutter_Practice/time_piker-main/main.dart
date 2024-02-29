import 'package:clock_time_picker/am_pm.dart';
import 'package:clock_time_picker/hours.dart';
import 'package:clock_time_picker/minuts.dart';
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
  late FixedExtentScrollController _hoursControler;
  late FixedExtentScrollController _minutsControler;
  late FixedExtentScrollController _amPmControler;
  String selectedTime = "12:00 AM";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _hoursControler = FixedExtentScrollController();
    _minutsControler = FixedExtentScrollController();
    _amPmControler = FixedExtentScrollController();
  }

  void updateSelectedTime(){
    //Get selected value from controllers

    int selectedHours = _hoursControler.selectedItem;
    int selectedMinutes = _minutsControler.selectedItem;
    String amPm = _amPmControler.selectedItem==0? 'AM':'PM';

    //Format the time and update the state
    setState(() {
      selectedTime= '$selectedHours:${selectedMinutes.toString().padLeft(2,'0')} $amPm';
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$selectedTime",
                style: TextStyle(
                fontSize: 40  ,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 15),

              Container(
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                        controller: _hoursControler,
                        itemExtent: 50,
                        perspective: 0.008,
                        diameterRatio: 1.2,
                        physics: FixedExtentScrollPhysics(),
                        onSelectedItemChanged: (index){
                          updateSelectedTime();
                        },
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount: 13,
                          builder: (context, index) {
                            return MyHours(
                              hours: index,
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(width: 15),

                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                          controller: _minutsControler,
                          itemExtent: 50,
                          perspective: 0.008,
                          diameterRatio: 1.2,
                          physics: FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index){
                            updateSelectedTime();
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 60,
                            builder: (context, index) {
                              return MyMinutes(
                                min: index,
                              );
                            },
                          )),
                    ),

                    SizedBox(width: 15),

                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                          controller: _amPmControler
                          ,
                          itemExtent: 50,
                          perspective: 0.008,
                          diameterRatio: 1.2,
                          physics: FixedExtentScrollPhysics(),
                          onSelectedItemChanged: (index){
                            updateSelectedTime();
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 2,
                            builder: (context, index) {
                              if(index==0){
                                return AmPm(
                                  isItsAm : true,
                                );
                              }else{
                                return AmPm(
                                  isItsAm : false,
                                );
                              }
                            },
                          )),
                    ),

                  ],
                ),
              ),


            ],
          ),
        ));
  }
}
