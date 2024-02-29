import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class toDoTile extends StatelessWidget{
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTasks;

  toDoTile({
  super.key,
  required this.taskName,
  required this.taskCompleted,
  required this.onChanged,
  required this.deleteTasks});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteTasks,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                //chekbox
                Checkbox(value: taskCompleted, onChanged: onChanged, activeColor: Colors.black,),
                Text(taskName,style: TextStyle(decoration: taskCompleted? TextDecoration.lineThrough : TextDecoration.none, decorationThickness: 1),),
              ],
            ),
          ),
          decoration: BoxDecoration(color: Colors.yellow,
          borderRadius: BorderRadius.circular(12)
          ),
        ),
      ),
    );
  }
}
