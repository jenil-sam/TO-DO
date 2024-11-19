import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: "Add a new task!"),
            ),

            //buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Save
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8,),
                
                //cancel
                MyButton(text: "Cancel", onPressed: onCancel),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}