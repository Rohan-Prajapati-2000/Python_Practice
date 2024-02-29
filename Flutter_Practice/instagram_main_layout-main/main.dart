// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var arrImages = [
//     "assets/images/img.jpg",
//     "assets/images/img1.jpg",
//     "assets/images/img2.jpg",
//     "assets/images/img3.jpg",
//     "assets/images/img4.jpg",
//     "assets/images/img.jpg",
//     "assets/images/img5.jpg",
//     "assets/images/img.jpg",
//     "assets/images/img1.jpg",
//     "assets/images/img2.jpg",
//     "assets/images/img3.jpg",
//     "assets/images/img4.jpg",
//     "assets/images/img.jpg",
//     "assets/images/img5.jpg"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//           backgroundColor: Colors.blueAccent,
//           title: Text("LIstView.Builder Practice")),
//       body:
//           // Container(
//           //   child: Image.asset(arrImages[0]),
//           // ),
//
//           ListView.builder(
//         itemCount: arrImages.length,
//         itemBuilder: (context, index) {
//           return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 300,
//                 child: ListTile(
//                   title: Image.asset(arrImages[index]),
//                 ),
//               ));
//         },
//       ),
//     );
//   }
// }














import 'package:flutter/material.dart';
import 'package:listview_builder/post.dart';
import 'package:listview_builder/story.dart';

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
  List arrPost = ["Post1","Post2","Post3","Post4","Post5","Post6","Post7","Post8","Post9","Post10","Post11","Post12","Post13","Post14",
    "Post15","Post16","Post17","Post18","Post19","Post20","Post21","Post22","Post23","Post24","Post25","Post26","Post27","Post28","Post29"];

  List arrStory = ["Story1","Story2","Story3","Story4","Story5","Story6","Story7","Story8","Story9","Story10"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("LIstView.Builder Practice")),
      body: Column(
        children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Container(
                  height: 150,
                    color: Colors.pink.shade200,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Stories(arrStory[index]);
                  },),
                ),
              ),


          Expanded(
            child: Container(
              height: 300,
              child: ListView.builder(
                itemCount: arrPost.length,
                  itemBuilder:(context, index) {
                  return MyPost(posts: arrPost[index]);
              },),
            ),
          ),
        ],
      )
    );
  }
}
