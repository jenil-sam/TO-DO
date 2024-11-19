// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool TaskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoTile({super.key, required this.taskName,
  required this.TaskCompleted,
  required this.onChanged,
  required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0,right:25, top:25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(12),
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,)
          ]
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              //check box
              Checkbox(
                value: TaskCompleted, 
                onChanged: onChanged,
                activeColor: Colors.black,
                ),
        
        
              //check name
              Text(
                taskName,
                style: TextStyle(decoration: TaskCompleted ? TextDecoration.lineThrough: TextDecoration.none),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
