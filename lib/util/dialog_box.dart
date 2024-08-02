import 'package:flutter/material.dart';
import 'package:myapp/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key,
  required this.controller,
  required this.onSave,
  required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 110,
        width: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 55),

                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )   
          ],
        ),
      ),
    );
  }
}
