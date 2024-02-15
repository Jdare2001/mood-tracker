import 'package:flutter/material.dart';

class AddHabitAlertDialog extends StatelessWidget {
  final controler;
  final String title;
  final String hint;
  final VoidCallback cancel;
  final VoidCallback onSave;

  const AddHabitAlertDialog({
    super.key,
    required this.title,
    required this.hint,
    required this.cancel,
    required this.controler,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controler,
            decoration: InputDecoration(labelText: hint),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: onSave,
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: cancel,
              child:
                  const Text("Cancel", style: TextStyle(color: Colors.white)),
            ),
          ])
        ],
      ),
    );
  }
}
