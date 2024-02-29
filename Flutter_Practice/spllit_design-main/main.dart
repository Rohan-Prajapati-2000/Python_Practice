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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
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
        // TRY THIS: Try chan
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 20,
        title: Text("Spllit our widget in class"),
      ),
      body: Column(
        children: [
          LikeStatus(),
          LikeChat(),
          ContactsView(),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
              ))
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LikeStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          width: double.infinity,
          color: Colors.cyanAccent,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(backgroundColor: Colors.black),
                ),
              );
            },
            itemCount: 20,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}

class LikeChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: Colors.blue,
          child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img10.jpg"),
                  ),
                  title: Text("Name"),
                  subtitle: Text("Contact Number"),
                  trailing: Icon(Icons.delete),
                );
              },
              itemCount: 40),
        ));
  }
}

class ContactsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.pinkAccent,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          // child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Container(height: 100, width: 150, color: Colors.blue), Container(width: 10),
          //     Container(height: 100, width: 150, color: Colors.red), Container(width: 10),
          //     Container(height: 100, width: 150, color: Colors.yellow), Container(width: 10),
          //     Container(height: 100, width: 150, color: Colors.blue), Container(width: 10),
          //     Container(height: 100, width: 150, color: Colors.blue), Container(width: 10),
          //   ],

          child: ListView.builder(
            itemBuilder: (context, index) {
              // return Text("Hello");
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.yellowAccent),
                  ),
                ),
              );
            },
            itemCount: 15,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
