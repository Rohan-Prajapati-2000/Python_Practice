
import 'package:flutter/material.dart';
import 'package:todo_app/utility/dialog_box.dart';
import 'package:todo_app/utility/todo_tile.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
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
  final textValue = TextEditingController();


  // list of todo tasks
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Excersise", false]
  ];

  // CheckBox method when clicked on it
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // onSave declaration saveNewTasks
  void saveNewTasks(){
    setState(() {
      toDoList.add([textValue.text, false]);
      textValue.clear();
    });
    Navigator.of(context).pop();
  }


  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return dialogBox(
          inputTasks: textValue,
          onSave: saveNewTasks,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // delete tasks
  void deleteValue(int index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("TODO"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return toDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteTasks: (context) => deleteValue(index),
          );
        },
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
