// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var arrNames = ["Ram", "Shyam", "Aman", "Raman", "Karan", "Varun", "Dhawan", "Naman", "Rohit", "Mohit", "Sohit"];
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("ListTile"),
//       ),
//       body: ListView.separated(itemBuilder: (context, index) {
//         return ListTile(
//           leading: Text("${index+1}"),    // Leading used for item count from starting point
//           title: Text(arrNames[index]),   // This is the Name which is in bold
//           subtitle: Text("Numbers"),      // This is the subtitle in smaller than title in light grey color
//           trailing: Icon(Icons.favorite), // This is the Icon which will set on rihgt side near about end point
//         );
//       },
//         itemCount: arrNames.length,
//         separatorBuilder: (context, index) {
//           return Divider(height: 20, thickness: 1, color: Colors.red);
//         },
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }







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
  @override
  Widget build(BuildContext context) {
    var arrNames = ["Ram", "Shyam", "Aman", "Raman", "Karan", "Varun", "Dhawan", "Naman", "Rohit", "Mohit", "Sohit"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ListTile"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            // child: Text("${index+1}"),
            backgroundImage: AssetImage('assets/images/img1.jpg')
          ),    // " Leading used for item count from starting point
          title: Text(arrNames[index]),   // This is the Name which is in bold
          subtitle: Text("Numbers"),      // This is the subtitle in smaller than title in light grey color
          trailing: Icon(Icons.favorite), // This is the Icon which will set on rihgt side near about end point
        );
      },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(height: 20, thickness: 1, color: Colors.red);
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
