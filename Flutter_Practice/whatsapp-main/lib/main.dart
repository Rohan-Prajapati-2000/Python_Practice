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
  var listValue = [
    {'name': "Amit", 'mobno': "7550431307", 'unread': '5', 'profile': 'assets/images/img.jpg'},
    {'name': "Namit", 'mobno': "9999807060", 'unread': '15', 'profile': 'assets/images/img1.jpg'},
    {'name': "Rohit", 'mobno': "9870495352", 'unread': '2', 'profile': 'assets/images/img2.jpg'},
    {'name': "Mohit", 'mobno': "7080613031", 'unread': '7', 'profile': 'assets/images/img3.jpg'},
    {'name': "Sohit", 'mobno': "8888779980", 'unread': '5', 'profile': 'assets/images/img4.jpg'},
    {'name': "Karan", 'mobno': "9898988686", 'unread': '8', 'profile': 'assets/images/img5.jpg'},
    {'name': "Akash", 'mobno': "8960780211", 'unread': '50', 'profile': 'assets/images/img6.jpg'},
    {'name': "Amit", 'mobno': "7550431307", 'unread': '5', 'profile': 'assets/images/img7.jpg'},
    {'name': "Namit", 'mobno': "9999807060", 'unread': '15', 'profile': 'assets/images/img8.jpg'},
    {'name': "Rohit", 'mobno': "9870495352", 'unread': '2', 'profile': 'assets/images/img9.jpg'},
    {'name': "Mohit", 'mobno': "7080613031", 'unread': '7', 'profile': 'assets/images/img10.jpg'},
    {'name': "Sohit", 'mobno': "8888779980", 'unread': '5', 'profile': 'assets/images/img11.png'},
    {'name': "Karan", 'mobno': "9898988686", 'unread': '8', 'profile': 'assets/images/img12.jpg'},
    {'name': "Akash", 'mobno': "8960780211", 'unread': '50', 'profile': 'assets/images/img13.jpg'},
    {'name': "Amit", 'mobno': "7550431307", 'unread': '5', 'profile': 'assets/images/img14.jpg'},
    {'name': "Namit", 'mobno': "9999807060", 'unread': '15', 'profile': 'assets/images/img15.jpg'},
    {'name': "Rohit", 'mobno': "9870495352", 'unread': '2', 'profile': 'assets/images/img16.jpg'},
    {'name': "Mohit", 'mobno': "7080613031", 'unread': '7', 'profile': 'assets/images/img17.jpg'},
    {'name': "Sohit", 'mobno': "8888779980", 'unread': '5', 'profile': 'assets/images/img18.jpeg'},
    {'name': "Karan", 'mobno': "9898988686", 'unread': '8', 'profile': 'assets/images/img19.jpg'},
    {'name': "Akash", 'mobno': "8960780211", 'unread': '50', 'profile': 'assets/images/img20.jpg'},
    {'name': "Amit", 'mobno': "7550431307", 'unread': '5', 'profile': 'assets/images/img.jpg'},
    {'name': "Namit", 'mobno': "9999807060", 'unread': '15', 'profile': 'assets/images/img1.jpg'},
    {'name': "Rohit", 'mobno': "9870495352", 'unread': '2', 'profile': 'assets/images/img2.jpg'},
    {'name': "Mohit", 'mobno': "7080613031", 'unread': '7', 'profile': 'assets/images/img3.jpg'},
    {'name': "Sohit", 'mobno': "8888779980", 'unread': '5', 'profile': 'assets/images/img4.jpg'},
    {'name': "Karan", 'mobno': "9898988686", 'unread': '8', 'profile': 'assets/images/img5.jpg'},
    {'name': "Akash", 'mobno': "8960780211", 'unread': '50', 'profile': 'assets/images/img6.jpg'},
    {'name': "Amit", 'mobno': "7550431307", 'unread': '5', 'profile': 'assets/images/img7.jpg'},
    {'name': "Namit", 'mobno': "9999807060", 'unread': '15', 'profile': 'assets/images/img8.jpg'},
    {'name': "Rohit", 'mobno': "9870495352", 'unread': '2', 'profile': 'assets/images/img9.jpg'},
    {'name': "Mohit", 'mobno': "7080613031", 'unread': '7', 'profile': 'assets/images/img10.jpg'},
    {'name': "Sohit", 'mobno': "8888779980", 'unread': '5', 'profile': 'assets/images/img11.png'},
    {'name': "Karan", 'mobno': "9898988686", 'unread': '8', 'profile': 'assets/images/img12.jpg'},
    {'name': "Akash", 'mobno': "8960780211", 'unread': '50', 'profile': 'assets/images/img13.jpg'},
    {'name': "Amit", 'mobno': "7550431307", 'unread': '5', 'profile': 'assets/images/img14.jpg'},
    {'name': "Namit", 'mobno': "9999807060", 'unread': '15', 'profile': 'assets/images/img15.jpg'},
    {'name': "Rohit", 'mobno': "9870495352", 'unread': '2', 'profile': 'assets/images/img16.jpg'},
    {'name': "Mohit", 'mobno': "7080613031", 'unread': '7', 'profile': 'assets/images/img17.jpg'},
    {'name': "Sohit", 'mobno': "8888779980", 'unread': '5', 'profile': 'assets/images/img18.jpeg'},
    {'name': "Karan", 'mobno': "9898988686", 'unread': '8', 'profile': 'assets/images/img19.jpg'},
    {'name': "Akash", 'mobno': "8960780211", 'unread': '50', 'profile': 'assets/images/img20.jpg'},
  ];

  // var listValue = [
  //   "Amit", "Namit", "Rohit", "Mohit", "Sohit", "Karan", "Arjun", "Sumit", "Akash", "Vikas", "Aryan", "Aditya", "Adarsh"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Color(0xff035b28),
        title: Row(
          children: [
            Text("Whatsapp", style: TextStyle(color: Colors.white, fontSize: 25),),

            Spacer(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt_outlined, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert, color: Colors.white),
            )
          ],
        ),
      ),
      body:
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     child: ListView(
          //       children: listValue.map((value) {
          //         return Padding(
          //           padding: const EdgeInsets.all(2.0),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(15),
          //               color: Colors.blue,
          //             ),
          //             child: Padding(
          //               padding: const EdgeInsets.all(30.0),
          //               child: Center(child: Text(value)),
          //             ),
          //                       ),
          //         );
          //       }).toList()
          //     ),
          //   ),
          // ),

          Container(
        child: ListView(
            children: listValue.map((value) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(value['profile'].toString()),),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
                  child: Text(value['unread'].toString(), style: TextStyle(fontSize: 10, color: Colors.white))),
            ),
          );
        }).toList()),
      ),
    );
  }
}
